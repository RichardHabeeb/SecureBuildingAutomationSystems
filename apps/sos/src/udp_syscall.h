#include <cspace/cspace.h>
#include <lwip/ip_addr.h>

void udp_send_syscall(struct ip_addr ipaddr, int port, char * data, unsigned int len);
void udp_recv_syscall(int port, seL4_CPtr reply_cap);
void udp_syscall_init();
