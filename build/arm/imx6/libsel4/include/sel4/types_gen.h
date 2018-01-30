#ifndef _HOME_MINT_SEL4_DHS_DEMO_FEB_2018_BUILD_ARM_IMX6_LIBSEL4_INCLUDE_SEL4_TYPES_GEN_H
#define _HOME_MINT_SEL4_DHS_DEMO_FEB_2018_BUILD_ARM_IMX6_LIBSEL4_INCLUDE_SEL4_TYPES_GEN_H

#include <autoconf.h>
#include <sel4/simple_types.h>
#include <sel4/debug_assert.h>
struct seL4_MessageInfo {
    seL4_Uint32 words[1];
};
typedef struct seL4_MessageInfo seL4_MessageInfo_t;

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_new(seL4_Uint32 label, seL4_Uint32 capsUnwrapped, seL4_Uint32 extraCaps, seL4_Uint32 length) {
    seL4_MessageInfo_t seL4_MessageInfo;

    seL4_MessageInfo.words[0] = 0;
    
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((label & ~0xffffful) == ((0 && (label & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] |= (label & 0xffffful) << 12;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((capsUnwrapped & ~0x7ul) == ((0 && (capsUnwrapped & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] |= (capsUnwrapped & 0x7ul) << 9;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((extraCaps & ~0x3ul) == ((0 && (extraCaps & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] |= (extraCaps & 0x3ul) << 7;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((length & ~0x7ful) == ((0 && (length & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] |= (length & 0x7ful) << 0;

    return seL4_MessageInfo;
}

static inline void
seL4_MessageInfo_ptr_new(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 label, seL4_Uint32 capsUnwrapped, seL4_Uint32 extraCaps, seL4_Uint32 length) {
    seL4_MessageInfo_ptr->words[0] = 0;

    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((label & ~0xffffful) == ((0 && (label & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] |= (label & 0xffffful) << 12;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((capsUnwrapped & ~0x7ul) == ((0 && (capsUnwrapped & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] |= (capsUnwrapped & 0x7ul) << 9;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((extraCaps & ~0x3ul) == ((0 && (extraCaps & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] |= (extraCaps & 0x3ul) << 7;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((length & ~0x7ful) == ((0 && (length & (1ul << 31))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] |= (length & 0x7ful) << 0;
}

static inline seL4_Uint32 CONST
seL4_MessageInfo_get_label(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0xfffff000ul) >> 12;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_label(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xfffff000 >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~0xfffff000ul;
    seL4_MessageInfo.words[0] |= (v << 12) & 0xfffff000ul;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 PURE
seL4_MessageInfo_ptr_get_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0xfffff000ul) >> 12;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xfffff000 >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~0xfffff000ul;
    seL4_MessageInfo_ptr->words[0] |= (v << 12) & 0xfffff000;
}

static inline seL4_Uint32 CONST
seL4_MessageInfo_get_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0xe00ul) >> 9;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~0xe00ul;
    seL4_MessageInfo.words[0] |= (v << 9) & 0xe00ul;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 PURE
seL4_MessageInfo_ptr_get_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0xe00ul) >> 9;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~0xe00ul;
    seL4_MessageInfo_ptr->words[0] |= (v << 9) & 0xe00;
}

static inline seL4_Uint32 CONST
seL4_MessageInfo_get_extraCaps(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0x180ul) >> 7;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_extraCaps(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~0x180ul;
    seL4_MessageInfo.words[0] |= (v << 7) & 0x180ul;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 PURE
seL4_MessageInfo_ptr_get_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0x180ul) >> 7;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~0x180ul;
    seL4_MessageInfo_ptr->words[0] |= (v << 7) & 0x180;
}

static inline seL4_Uint32 CONST
seL4_MessageInfo_get_length(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0x7ful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_length(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~0x7ful;
    seL4_MessageInfo.words[0] |= (v << 0) & 0x7ful;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 PURE
seL4_MessageInfo_ptr_get_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0x7ful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~0x7ful;
    seL4_MessageInfo_ptr->words[0] |= (v << 0) & 0x7f;
}

struct seL4_CapData {
    seL4_Uint32 words[1];
};
typedef struct seL4_CapData seL4_CapData_t;

enum seL4_CapData_tag {
    seL4_CapData_Badge = 0,
    seL4_CapData_Guard = 1
};
typedef enum seL4_CapData_tag seL4_CapData_tag_t;

static inline seL4_Uint32 CONST
seL4_CapData_get_CapDataType(seL4_CapData_t seL4_CapData) {
    return (seL4_CapData.words[0] >> 31) & 0x1ul;
}

static inline int CONST
seL4_CapData_CapDataType_equals(seL4_CapData_t seL4_CapData, seL4_Uint32 seL4_CapData_type_tag) {
    return ((seL4_CapData.words[0] >> 31) & 0x1ul) == seL4_CapData_type_tag;
}

static inline seL4_Uint32 PURE
seL4_CapData_ptr_get_CapDataType(seL4_CapData_t *seL4_CapData_ptr) {
    return (seL4_CapData_ptr->words[0] >> 31) & 0x1ul;
}

static inline seL4_CapData_t CONST
seL4_CapData_Badge_new(seL4_Uint32 Badge) {
    seL4_CapData_t seL4_CapData;

    seL4_CapData.words[0] = 0;
    
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((seL4_Uint32)seL4_CapData_Badge & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Badge & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData.words[0] |= ((seL4_Uint32)seL4_CapData_Badge & 0x1ul) << 31;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((Badge & ~0xffffffful) == ((0 && (Badge & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData.words[0] |= (Badge & 0xffffffful) << 0;

    return seL4_CapData;
}

static inline void
seL4_CapData_Badge_ptr_new(seL4_CapData_t *seL4_CapData_ptr, seL4_Uint32 Badge) {
    seL4_CapData_ptr->words[0] = 0;

    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((seL4_Uint32)seL4_CapData_Badge & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Badge & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData_ptr->words[0] |= ((seL4_Uint32)seL4_CapData_Badge & 0x1ul) << 31;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((Badge & ~0xffffffful) == ((0 && (Badge & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData_ptr->words[0] |= (Badge & 0xffffffful) << 0;
}

static inline seL4_Uint32 CONST
seL4_CapData_Badge_get_Badge(seL4_CapData_t seL4_CapData) {
    seL4_Uint32 ret;
    seL4_DebugAssert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);

    ret = (seL4_CapData.words[0] & 0xffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapData_t CONST
seL4_CapData_Badge_set_Badge(seL4_CapData_t seL4_CapData, seL4_Uint32 v) {
    seL4_DebugAssert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));

    seL4_CapData.words[0] &= ~0xffffffful;
    seL4_CapData.words[0] |= (v << 0) & 0xffffffful;
    return seL4_CapData;
}

static inline seL4_Uint32 PURE
seL4_CapData_Badge_ptr_get_Badge(seL4_CapData_t *seL4_CapData_ptr) {
    seL4_Uint32 ret;
    seL4_DebugAssert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);

    ret = (seL4_CapData_ptr->words[0] & 0xffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapData_Badge_ptr_set_Badge(seL4_CapData_t *seL4_CapData_ptr,
                                      seL4_Uint32 v) {
    seL4_DebugAssert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);

    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));

    seL4_CapData_ptr->words[0] &= ~0xffffffful;
    seL4_CapData_ptr->words[0] |= (v << 0) & 0xffffffful;
}

static inline seL4_CapData_t CONST
seL4_CapData_Guard_new(seL4_Uint32 GuardBits, seL4_Uint32 GuardSize) {
    seL4_CapData_t seL4_CapData;

    seL4_CapData.words[0] = 0;
    
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((seL4_Uint32)seL4_CapData_Guard & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Guard & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData.words[0] |= ((seL4_Uint32)seL4_CapData_Guard & 0x1ul) << 31;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((GuardBits & ~0x3fffful) == ((0 && (GuardBits & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData.words[0] |= (GuardBits & 0x3fffful) << 8;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((GuardSize & ~0x1ful) == ((0 && (GuardSize & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData.words[0] |= (GuardSize & 0x1ful) << 3;

    return seL4_CapData;
}

static inline void
seL4_CapData_Guard_ptr_new(seL4_CapData_t *seL4_CapData_ptr, seL4_Uint32 GuardBits, seL4_Uint32 GuardSize) {
    seL4_CapData_ptr->words[0] = 0;

    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((seL4_Uint32)seL4_CapData_Guard & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Guard & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData_ptr->words[0] |= ((seL4_Uint32)seL4_CapData_Guard & 0x1ul) << 31;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((GuardBits & ~0x3fffful) == ((0 && (GuardBits & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData_ptr->words[0] |= (GuardBits & 0x3fffful) << 8;
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((GuardSize & ~0x1ful) == ((0 && (GuardSize & (1ul << 31))) ? 0x0 : 0));
    seL4_CapData_ptr->words[0] |= (GuardSize & 0x1ful) << 3;
}

static inline seL4_Uint32 CONST
seL4_CapData_Guard_get_GuardBits(seL4_CapData_t seL4_CapData) {
    seL4_Uint32 ret;
    seL4_DebugAssert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    ret = (seL4_CapData.words[0] & 0x3ffff00ul) >> 8;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapData_t CONST
seL4_CapData_Guard_set_GuardBits(seL4_CapData_t seL4_CapData, seL4_Uint32 v) {
    seL4_DebugAssert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0x3ffff00ul >> 8) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));

    seL4_CapData.words[0] &= ~0x3ffff00ul;
    seL4_CapData.words[0] |= (v << 8) & 0x3ffff00ul;
    return seL4_CapData;
}

static inline seL4_Uint32 PURE
seL4_CapData_Guard_ptr_get_GuardBits(seL4_CapData_t *seL4_CapData_ptr) {
    seL4_Uint32 ret;
    seL4_DebugAssert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    ret = (seL4_CapData_ptr->words[0] & 0x3ffff00ul) >> 8;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapData_Guard_ptr_set_GuardBits(seL4_CapData_t *seL4_CapData_ptr,
                                      seL4_Uint32 v) {
    seL4_DebugAssert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0x3ffff00ul >> 8) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));

    seL4_CapData_ptr->words[0] &= ~0x3ffff00ul;
    seL4_CapData_ptr->words[0] |= (v << 8) & 0x3ffff00ul;
}

static inline seL4_Uint32 CONST
seL4_CapData_Guard_get_GuardSize(seL4_CapData_t seL4_CapData) {
    seL4_Uint32 ret;
    seL4_DebugAssert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    ret = (seL4_CapData.words[0] & 0xf8ul) >> 3;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapData_t CONST
seL4_CapData_Guard_set_GuardSize(seL4_CapData_t seL4_CapData, seL4_Uint32 v) {
    seL4_DebugAssert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xf8ul >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));

    seL4_CapData.words[0] &= ~0xf8ul;
    seL4_CapData.words[0] |= (v << 3) & 0xf8ul;
    return seL4_CapData;
}

static inline seL4_Uint32 PURE
seL4_CapData_Guard_ptr_get_GuardSize(seL4_CapData_t *seL4_CapData_ptr) {
    seL4_Uint32 ret;
    seL4_DebugAssert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    ret = (seL4_CapData_ptr->words[0] & 0xf8ul) >> 3;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapData_Guard_ptr_set_GuardSize(seL4_CapData_t *seL4_CapData_ptr,
                                      seL4_Uint32 v) {
    seL4_DebugAssert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    /* fail if user has passed bits that we will override */
    seL4_DebugAssert(((~0xf8ul >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0));

    seL4_CapData_ptr->words[0] &= ~0xf8ul;
    seL4_CapData_ptr->words[0] |= (v << 3) & 0xf8ul;
}

#endif
