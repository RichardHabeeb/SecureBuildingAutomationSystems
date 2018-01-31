#include "udp_syscall.h"

#include <sel4/sel4.h>
#include <cspace/cspace.h>

#include <lwip/udp.h>
#include <lwip/ip_addr.h>

#include <string.h>

#define HASH_TABLE_SIZE 256
typedef struct _entry
{
    int hash;
    int port;
    seL4_CPtr reply_cap;
    struct _entry *next;
} entry;

static entry *table[HASH_TABLE_SIZE];

void udp_syscall_init()
{
    for(int i = 0; i < HASH_TABLE_SIZE; i++)
    {
        table[i] = NULL;
    }
}

void udp_send_syscall(struct ip_addr ipaddr, int port, char * data, unsigned int len)
{
    struct udp_pcb* pcb;
    struct pbuf *p;
    err_t err;

    pcb = udp_new();

    if(pcb == NULL){
        printf("Error: udp_new failed.\n");
        return;
    }

    //printf("udp_send_syscall: data: %s, %i \n", data, len);
    err = udp_connect(pcb, &ipaddr, port);

    switch(err) {
    case ERR_OK:
        break;
    default:
        printf("Error: udp_connect failed.\n");
        break;
    }

    p = pbuf_alloc(PBUF_TRANSPORT, len, PBUF_RAM);

    if(p == NULL){
        printf("Error: pbuf_new failed.\n");
        return;
    }

    //memcpy(p->payload, data, len);
    pbuf_take(p, data, len);

    err = udp_send(pcb, p);
    switch(err) {
    case ERR_OK:
        break;
    default:
        printf("Error: udp_send failed.\n");
        break;
    }

    pbuf_free(p);
    udp_remove(pcb);

}



unsigned int hash(unsigned int x) {
    x = ((x >> 16) ^ x) * 0x45d9f3b;
    x = ((x >> 16) ^ x) * 0x45d9f3b;
    x = (x >> 16) ^ x;
    return x;
}


void insert(int port, seL4_CPtr reply_cap)
{
    unsigned int h;
    entry* current;

    h = hash((unsigned int) port) % HASH_TABLE_SIZE;
    //printf("Inserting hash: %i\n", h);

    if(table[h] == NULL)
    {
        table[h] = malloc(sizeof(entry));
        table[h]->hash = h;
        table[h]->port = port;
        table[h]->reply_cap = reply_cap;
        table[h]->next = NULL;
    }
    else
    {
        current = table[h];
        while(current->next != NULL)
        {
            current = current->next;
        }

        current->next = malloc(sizeof(entry));
        current->next->hash = h;
        current->next->port = port;
        current->next->reply_cap = reply_cap;
        current->next->next = NULL;
    }
}


seL4_CPtr lookup(int port)
{
    unsigned int h;
    entry* current;

    h = hash((unsigned int) port) % HASH_TABLE_SIZE;
    //printf("Looking up hash: %i\n", h);

    current = table[h];

    while(current != NULL)
    {
        if(current->port == port)
        {
            return current->reply_cap;
        }
        current = current->next;
    }
    return seL4_CapNull;
}

seL4_CPtr pop(int port)
{
    unsigned int h;
    entry *current, *prev;
    seL4_CPtr ret;

    h = hash((unsigned int) port) % HASH_TABLE_SIZE;
    //printf("Looking up hash: %i\n", h);

    prev = NULL;
    current = table[h];

    while(current != NULL)
    {
        if(current->port == port)
        {
            ret = current->reply_cap;

            if(prev == NULL) {
                table[h] = NULL;
            } else {
                prev->next = current->next;
            }
            free(current);

            return ret;
        }
        prev = current;
        current = current->next;
    }
    return seL4_CapNull;
}


static void my_recv(void *arg, struct udp_pcb *upcb, struct pbuf *p, struct ip_addr *addr, u16_t port)
{
    seL4_CPtr reply_cap;
    seL4_MessageInfo_t reply;

    reply_cap = pop(upcb->local_port);

    //printf("Incoming packet source: %i %i destination: %i %i reply: %i\n", addr->addr, port, upcb->local_ip.addr, upcb->local_port, reply_cap);

    if(reply_cap != seL4_CapNull)
    {
        reply = seL4_MessageInfo_new(0, 0, 0, (p->tot_len / sizeof(seL4_Word)) + ((p->tot_len % sizeof(seL4_Word) == 0) ? 2 : 3));

        seL4_SetMR(0, addr->addr);
        seL4_SetMR(1, port);
        pbuf_copy_partial(p, (seL4_GetIPCBuffer()->msg + 2), p->tot_len, 0);
        seL4_Send(reply_cap, reply);
        cspace_free_slot(cur_cspace, reply_cap);
    }
    else
    {
        //TODO Queue the missed packets
        //printf("Dropped a packet.\n");
    }

    pbuf_free(p);
    udp_remove(upcb);
}

void udp_recv_syscall(int port, seL4_CPtr reply_cap)
{
    struct udp_pcb* pcb;
    err_t err;
    pcb = udp_new();

    if(pcb == NULL){
        printf("Error: udp_new failed.\n");
        return;
    }

    //printf("udp_recv_syscall: port=%i cap=%i\n", port, reply_cap);

    insert(port, reply_cap);
    udp_recv(pcb, my_recv, NULL);
    err = udp_bind(pcb, IP_ADDR_ANY, port);
    switch(err) {
    case ERR_OK:
        break;
    default:
        printf("Error: udp_bind failed.\n");
        break;
    }
}
