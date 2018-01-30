# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/liblwip/lwip-1.4.1/src/core/ipv4/inet.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/build/arm/imx6/liblwip//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 201112L
#define __STDC_UTF_16__ 1
#define __STDC_UTF_32__ 1
#define __STDC_HOSTED__ 1
#define __GNUC__ 5
#define __GNUC_MINOR__ 4
#define __GNUC_PATCHLEVEL__ 0
#define __VERSION__ "5.4.0 20160609"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __OPTIMIZE__ 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 8
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 8
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __SIZE_TYPE__ unsigned int
#define __PTRDIFF_TYPE__ int
#define __WCHAR_TYPE__ unsigned int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long long int
#define __UINTMAX_TYPE__ long long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ int
#define __INT64_TYPE__ long long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ unsigned int
#define __UINT64_TYPE__ long long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ int
#define __INT_LEAST64_TYPE__ long long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ unsigned int
#define __UINT_LEAST64_TYPE__ long long unsigned int
#define __INT_FAST8_TYPE__ signed char
#define __INT_FAST16_TYPE__ int
#define __INT_FAST32_TYPE__ int
#define __INT_FAST64_TYPE__ long long int
#define __UINT_FAST8_TYPE__ unsigned char
#define __UINT_FAST16_TYPE__ unsigned int
#define __UINT_FAST32_TYPE__ unsigned int
#define __UINT_FAST64_TYPE__ long long unsigned int
#define __INTPTR_TYPE__ int
#define __UINTPTR_TYPE__ unsigned int
#define __has_include(STR) __has_include__(STR)
#define __has_include_next(STR) __has_include_next__(STR)
#define __GXX_ABI_VERSION 1009
#define __SCHAR_MAX__ 0x7f
#define __SHRT_MAX__ 0x7fff
#define __INT_MAX__ 0x7fffffff
#define __LONG_MAX__ 0x7fffffffL
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __WCHAR_MAX__ 0xffffffffU
#define __WCHAR_MIN__ 0U
#define __WINT_MAX__ 0xffffffffU
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 0x7fffffff
#define __SIZE_MAX__ 0xffffffffU
#define __INTMAX_MAX__ 0x7fffffffffffffffLL
#define __INTMAX_C(c) c ## LL
#define __UINTMAX_MAX__ 0xffffffffffffffffULL
#define __UINTMAX_C(c) c ## ULL
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __INT8_MAX__ 0x7f
#define __INT16_MAX__ 0x7fff
#define __INT32_MAX__ 0x7fffffff
#define __INT64_MAX__ 0x7fffffffffffffffLL
#define __UINT8_MAX__ 0xff
#define __UINT16_MAX__ 0xffff
#define __UINT32_MAX__ 0xffffffffU
#define __UINT64_MAX__ 0xffffffffffffffffULL
#define __INT_LEAST8_MAX__ 0x7f
#define __INT8_C(c) c
#define __INT_LEAST16_MAX__ 0x7fff
#define __INT16_C(c) c
#define __INT_LEAST32_MAX__ 0x7fffffff
#define __INT32_C(c) c
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffLL
#define __INT64_C(c) c ## LL
#define __UINT_LEAST8_MAX__ 0xff
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 0xffff
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 0xffffffffU
#define __UINT32_C(c) c ## U
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffULL
#define __UINT64_C(c) c ## ULL
#define __INT_FAST8_MAX__ 0x7f
#define __INT_FAST16_MAX__ 0x7fffffff
#define __INT_FAST32_MAX__ 0x7fffffff
#define __INT_FAST64_MAX__ 0x7fffffffffffffffLL
#define __UINT_FAST8_MAX__ 0xff
#define __UINT_FAST16_MAX__ 0xffffffffU
#define __UINT_FAST32_MAX__ 0xffffffffU
#define __UINT_FAST64_MAX__ 0xffffffffffffffffULL
#define __INTPTR_MAX__ 0x7fffffff
#define __UINTPTR_MAX__ 0xffffffffU
#define __GCC_IEC_559 0
#define __GCC_IEC_559_COMPLEX 0
#define __FLT_EVAL_METHOD__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.4028234663852886e+38F
#define __FLT_MIN__ 1.1754943508222875e-38F
#define __FLT_EPSILON__ 1.1920928955078125e-7F
#define __FLT_DENORM_MIN__ 1.4012984643248171e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.7976931348623157e+308L)
#define __DBL_MIN__ ((double)2.2250738585072014e-308L)
#define __DBL_EPSILON__ ((double)2.2204460492503131e-16L)
#define __DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 53
#define __LDBL_DIG__ 15
#define __LDBL_MIN_EXP__ (-1021)
#define __LDBL_MIN_10_EXP__ (-307)
#define __LDBL_MAX_EXP__ 1024
#define __LDBL_MAX_10_EXP__ 308
#define __DECIMAL_DIG__ 17
#define __LDBL_MAX__ 1.7976931348623157e+308L
#define __LDBL_MIN__ 2.2250738585072014e-308L
#define __LDBL_EPSILON__ 2.2204460492503131e-16L
#define __LDBL_DENORM_MIN__ 4.9406564584124654e-324L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __DEC32_MANT_DIG__ 7
#define __DEC32_MIN_EXP__ (-94)
#define __DEC32_MAX_EXP__ 97
#define __DEC32_MIN__ 1E-95DF
#define __DEC32_MAX__ 9.999999E96DF
#define __DEC32_EPSILON__ 1E-6DF
#define __DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
#define __DEC64_MANT_DIG__ 16
#define __DEC64_MIN_EXP__ (-382)
#define __DEC64_MAX_EXP__ 385
#define __DEC64_MIN__ 1E-383DD
#define __DEC64_MAX__ 9.999999999999999E384DD
#define __DEC64_EPSILON__ 1E-15DD
#define __DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
#define __DEC128_MANT_DIG__ 34
#define __DEC128_MIN_EXP__ (-6142)
#define __DEC128_MAX_EXP__ 6145
#define __DEC128_MIN__ 1E-6143DL
#define __DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
#define __DEC128_EPSILON__ 1E-33DL
#define __DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
#define __SFRACT_FBIT__ 7
#define __SFRACT_IBIT__ 0
#define __SFRACT_MIN__ (-0.5HR-0.5HR)
#define __SFRACT_MAX__ 0X7FP-7HR
#define __SFRACT_EPSILON__ 0x1P-7HR
#define __USFRACT_FBIT__ 8
#define __USFRACT_IBIT__ 0
#define __USFRACT_MIN__ 0.0UHR
#define __USFRACT_MAX__ 0XFFP-8UHR
#define __USFRACT_EPSILON__ 0x1P-8UHR
#define __FRACT_FBIT__ 15
#define __FRACT_IBIT__ 0
#define __FRACT_MIN__ (-0.5R-0.5R)
#define __FRACT_MAX__ 0X7FFFP-15R
#define __FRACT_EPSILON__ 0x1P-15R
#define __UFRACT_FBIT__ 16
#define __UFRACT_IBIT__ 0
#define __UFRACT_MIN__ 0.0UR
#define __UFRACT_MAX__ 0XFFFFP-16UR
#define __UFRACT_EPSILON__ 0x1P-16UR
#define __LFRACT_FBIT__ 31
#define __LFRACT_IBIT__ 0
#define __LFRACT_MIN__ (-0.5LR-0.5LR)
#define __LFRACT_MAX__ 0X7FFFFFFFP-31LR
#define __LFRACT_EPSILON__ 0x1P-31LR
#define __ULFRACT_FBIT__ 32
#define __ULFRACT_IBIT__ 0
#define __ULFRACT_MIN__ 0.0ULR
#define __ULFRACT_MAX__ 0XFFFFFFFFP-32ULR
#define __ULFRACT_EPSILON__ 0x1P-32ULR
#define __LLFRACT_FBIT__ 63
#define __LLFRACT_IBIT__ 0
#define __LLFRACT_MIN__ (-0.5LLR-0.5LLR)
#define __LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR
#define __LLFRACT_EPSILON__ 0x1P-63LLR
#define __ULLFRACT_FBIT__ 64
#define __ULLFRACT_IBIT__ 0
#define __ULLFRACT_MIN__ 0.0ULLR
#define __ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR
#define __ULLFRACT_EPSILON__ 0x1P-64ULLR
#define __SACCUM_FBIT__ 7
#define __SACCUM_IBIT__ 8
#define __SACCUM_MIN__ (-0X1P7HK-0X1P7HK)
#define __SACCUM_MAX__ 0X7FFFP-7HK
#define __SACCUM_EPSILON__ 0x1P-7HK
#define __USACCUM_FBIT__ 8
#define __USACCUM_IBIT__ 8
#define __USACCUM_MIN__ 0.0UHK
#define __USACCUM_MAX__ 0XFFFFP-8UHK
#define __USACCUM_EPSILON__ 0x1P-8UHK
#define __ACCUM_FBIT__ 15
#define __ACCUM_IBIT__ 16
#define __ACCUM_MIN__ (-0X1P15K-0X1P15K)
#define __ACCUM_MAX__ 0X7FFFFFFFP-15K
#define __ACCUM_EPSILON__ 0x1P-15K
#define __UACCUM_FBIT__ 16
#define __UACCUM_IBIT__ 16
#define __UACCUM_MIN__ 0.0UK
#define __UACCUM_MAX__ 0XFFFFFFFFP-16UK
#define __UACCUM_EPSILON__ 0x1P-16UK
#define __LACCUM_FBIT__ 31
#define __LACCUM_IBIT__ 32
#define __LACCUM_MIN__ (-0X1P31LK-0X1P31LK)
#define __LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK
#define __LACCUM_EPSILON__ 0x1P-31LK
#define __ULACCUM_FBIT__ 32
#define __ULACCUM_IBIT__ 32
#define __ULACCUM_MIN__ 0.0ULK
#define __ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK
#define __ULACCUM_EPSILON__ 0x1P-32ULK
#define __LLACCUM_FBIT__ 31
#define __LLACCUM_IBIT__ 32
#define __LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)
#define __LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK
#define __LLACCUM_EPSILON__ 0x1P-31LLK
#define __ULLACCUM_FBIT__ 32
#define __ULLACCUM_IBIT__ 32
#define __ULLACCUM_MIN__ 0.0ULLK
#define __ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK
#define __ULLACCUM_EPSILON__ 0x1P-32ULLK
#define __QQ_FBIT__ 7
#define __QQ_IBIT__ 0
#define __HQ_FBIT__ 15
#define __HQ_IBIT__ 0
#define __SQ_FBIT__ 31
#define __SQ_IBIT__ 0
#define __DQ_FBIT__ 63
#define __DQ_IBIT__ 0
#define __TQ_FBIT__ 127
#define __TQ_IBIT__ 0
#define __UQQ_FBIT__ 8
#define __UQQ_IBIT__ 0
#define __UHQ_FBIT__ 16
#define __UHQ_IBIT__ 0
#define __USQ_FBIT__ 32
#define __USQ_IBIT__ 0
#define __UDQ_FBIT__ 64
#define __UDQ_IBIT__ 0
#define __UTQ_FBIT__ 128
#define __UTQ_IBIT__ 0
#define __HA_FBIT__ 7
#define __HA_IBIT__ 8
#define __SA_FBIT__ 15
#define __SA_IBIT__ 16
#define __DA_FBIT__ 31
#define __DA_IBIT__ 32
#define __TA_FBIT__ 63
#define __TA_IBIT__ 64
#define __UHA_FBIT__ 8
#define __UHA_IBIT__ 8
#define __USA_FBIT__ 16
#define __USA_IBIT__ 16
#define __UDA_FBIT__ 32
#define __UDA_IBIT__ 32
#define __UTA_FBIT__ 64
#define __UTA_IBIT__ 64
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define _FORTIFY_SOURCE 2
#define __GNUC_STDC_INLINE__ 1
#define __CHAR_UNSIGNED__ 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __GCC_ATOMIC_SHORT_LOCK_FREE 2
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __GCC_ATOMIC_LLONG_LOCK_FREE 2
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 4
#define __ARM_FEATURE_DSP 1
#define __ARM_FEATURE_QBIT 1
#define __ARM_FEATURE_SAT 1
#define __ARM_FEATURE_UNALIGNED 1
#undef __ARM_FEATURE_QRDMX
# 1 "<built-in>"
#define __ARM_32BIT_STATE 1
#define __ARM_FEATURE_LDREX 15
#define __ARM_FEATURE_CLZ 1
#define __ARM_FEATURE_SIMD32 1
#define __ARM_SIZEOF_MINIMAL_ENUM 4
#define __ARM_SIZEOF_WCHAR_T 4
#define __ARM_ARCH_PROFILE 65
#define __arm__ 1
#define __ARM_ARCH 7
#define __ARM_ARCH_ISA_ARM 1
#define __APCS_32__ 1
#undef __thumb__
# 1 "<built-in>"
#undef __thumb2__
# 1 "<built-in>"
#undef __THUMBEL__
# 1 "<built-in>"
#define __ARM_ARCH_ISA_THUMB 2
#define __ARMEL__ 1
#define __SOFTFP__ 1
#define __VFP_FP__ 1
#define __THUMB_INTERWORK__ 1
#define __ARM_ARCH_7A__ 1
#define __ARM_PCS 1
#define __ARM_EABI__ 1
#undef __ARM_ARCH_EXT_IDIV__
# 1 "<built-in>"
#undef __ARM_FEATURE_IDIV
# 1 "<built-in>"
#undef __ARM_ASM_SYNTAX_UNIFIED__
# 1 "<built-in>"
#define __GXX_TYPEINFO_EQUALITY_INLINE 0
#define __gnu_linux__ 1
#define __linux 1
#define __linux__ 1
#define linux 1
#define __unix 1
#define __unix__ 1
#define unix 1
#define __ELF__ 1
# 1 "<command-line>"
#define _POSIX_SOURCE 1
#define HAVE_AUTOCONF 1
#define SOS_NFS_DIR "/var/tftpboot/mint"
#define ARCH_ARM 1
#define ARMV7_A 1
#define ARM_CORTEX_A9 1
#define IMX6 1
#define PLAT_IMX6 1
#define DEBUG 1
#define SEL4_DEBUG_KERNEL 1
#define FASTPATH 1
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/liblwip/lwip-1.4.1/src/core/ipv4/inet.c"
# 39 "/home/mint/seL4/dhs-demo-feb-2018/libs/liblwip/lwip-1.4.1/src/core/ipv4/inet.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h" 1
# 39 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define __LWIP_OPT_H__ 





# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/lwipopts.h" 1
# 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/lwipopts.h"
#define __LWIPOPTS_H__ 


#define NO_SYS 1

#define NO_SYS_NO_TIMERS 1

#define LWIP_NETCONN 0
#define LWIP_SOCKET 0


#define MEM_LIBC_MALLOC 1
#define MEMP_MEM_MALLOC 1


#define MEM_SIZE 16000
#define TCP_SND_QUEUELEN 40
#define MEMP_NUM_TCP_SEG TCP_SND_QUEUELEN
#define TCP_SND_BUF (12 * TCP_MSS)
#define TCP_WND (10 * TCP_MSS)


#define ETHARP_SUPPORT_STATIC_ENTRIES 1
# 46 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/debug.h" 1
# 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/debug.h"
#define __LWIP_DEBUG_H__ 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch.h" 1
# 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch.h"
#define __LWIP_ARCH_H__ 


#define LITTLE_ENDIAN 1234



#define BIG_ENDIAN 4321


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch/cc.h" 1
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdint.h" 1



#define _STDINT_H 

#define __NEED_int8_t 
#define __NEED_int16_t 
#define __NEED_int32_t 
#define __NEED_int64_t 

#define __NEED_uint8_t 
#define __NEED_uint16_t 
#define __NEED_uint32_t 
#define __NEED_uint64_t 

#define __NEED_int_fast8_t 
#define __NEED_int_fast16_t 
#define __NEED_int_fast32_t 
#define __NEED_int_fast64_t 

#define __NEED_uint_fast8_t 
#define __NEED_uint_fast16_t 
#define __NEED_uint_fast32_t 
#define __NEED_uint_fast64_t 

#define __NEED_intptr_t 
#define __NEED_uintptr_t 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1
# 49 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef signed char int8_t;
#define __DEFINED_int8_t 



typedef short int16_t;
#define __DEFINED_int16_t 



typedef int int32_t;
#define __DEFINED_int32_t 



typedef long long int64_t;
#define __DEFINED_int64_t 




typedef unsigned char uint8_t;
#define __DEFINED_uint8_t 



typedef unsigned short uint16_t;
#define __DEFINED_uint16_t 



typedef unsigned int uint32_t;
#define __DEFINED_uint32_t 



typedef unsigned long long uint64_t;
#define __DEFINED_uint64_t 
# 107 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef int8_t int_fast8_t;
#define __DEFINED_int_fast8_t 



typedef int int_fast16_t;
#define __DEFINED_int_fast16_t 



typedef int int_fast32_t;
#define __DEFINED_int_fast32_t 



typedef int64_t int_fast64_t;
#define __DEFINED_int_fast64_t 




typedef unsigned char uint_fast8_t;
#define __DEFINED_uint_fast8_t 



typedef unsigned int uint_fast16_t;
#define __DEFINED_uint_fast16_t 



typedef unsigned int uint_fast32_t;
#define __DEFINED_uint_fast32_t 



typedef uint64_t uint_fast64_t;
#define __DEFINED_uint_fast64_t 




typedef long intptr_t;
#define __DEFINED_intptr_t 



typedef unsigned long uintptr_t;
#define __DEFINED_uintptr_t 
# 30 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdint.h" 2

typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;

typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;

typedef long long intmax_t;
typedef unsigned long long uintmax_t;



#define INT8_MIN (-1-0x7f)
#define INT16_MIN (-1-0x7fff)
#define INT32_MIN (-1-0x7fffffff)
#define INT64_MIN (-1-0x7fffffffffffffffLL)

#define INT8_MAX (0x7f)
#define INT16_MAX (0x7fff)
#define INT32_MAX (0x7fffffff)
#define INT64_MAX (0x7fffffffffffffffLL)

#define UINT8_MAX (0xff)
#define UINT16_MAX (0xffff)
#define UINT32_MAX (0xffffffff)
#define UINT64_MAX (0xffffffffffffffffULL)

#define INT_LEAST8_MIN INT8_MIN
#define INT_LEAST16_MIN INT16_MIN
#define INT_LEAST32_MIN INT32_MIN
#define INT_LEAST64_MIN INT64_MIN

#define INT_LEAST8_MAX INT8_MAX
#define INT_LEAST16_MAX INT16_MAX
#define INT_LEAST32_MAX INT32_MAX
#define INT_LEAST64_MAX INT64_MAX

#define UINT_LEAST8_MAX UINT8_MAX
#define UINT_LEAST16_MAX UINT16_MAX
#define UINT_LEAST32_MAX UINT32_MAX
#define UINT_LEAST64_MAX UINT64_MAX

#define INTMAX_MIN INT64_MIN
#define INTMAX_MAX INT64_MAX
#define UINTMAX_MAX UINT64_MAX

#define WINT_MIN INT32_MIN
#define WINT_MAX INT32_MAX

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/wchar.h" 1



#define WCHAR_MIN 0U
#define WCHAR_MAX 0xffffffffU
# 84 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdint.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/stdint.h" 1


#define INT_FAST8_MIN INT8_MIN
#define INT_FAST16_MIN INT32_MIN
#define INT_FAST32_MIN INT32_MIN
#define INT_FAST64_MIN INT64_MIN

#define INT_FAST8_MAX INT8_MAX
#define INT_FAST16_MAX INT32_MAX
#define INT_FAST32_MAX INT32_MAX
#define INT_FAST64_MAX INT64_MAX

#define UINT_FAST8_MAX UINT8_MAX
#define UINT_FAST16_MAX UINT32_MAX
#define UINT_FAST32_MAX UINT32_MAX
#define UINT_FAST64_MAX UINT64_MAX

#define INTPTR_MIN INT32_MIN
#define INTPTR_MAX INT32_MAX
#define UINTPTR_MAX UINT32_MAX
#define PTRDIFF_MIN INT32_MIN
#define PTRDIFF_MAX INT32_MAX
#define SIG_ATOMIC_MIN INT32_MIN
#define SIG_ATOMIC_MAX INT32_MAX
#define SIZE_MAX UINT32_MAX
# 85 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdint.h" 2





#define INT8_C(c) c
#define INT16_C(c) c
#define INT32_C(c) c
#define INT64_C(c) c ## LL

#define UINT8_C(c) c
#define UINT16_C(c) c
#define UINT32_C(c) c ## U
#define UINT64_C(c) c ## ULL

#define INTMAX_C(c) c ## LL
#define UINTMAX_C(c) c ## ULL
# 2 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch/cc.h" 2

typedef uint8_t u8_t;
typedef uint16_t u16_t;
typedef uint32_t u32_t;
typedef uint64_t u64_t;

typedef int8_t s8_t;
typedef int16_t s16_t;
typedef int32_t s32_t;
typedef int64_t s64_t;

typedef uintptr_t mem_ptr_t;


#define U16_F "hu"
#define S16_F "d"
#define X16_F "hx"
#define U32_F "u"
#define S32_F "d"
#define X32_F "x"
#define SZT_F "uz"



#define BYTE_ORDER __BYTE_ORDER__
# 36 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch/cc.h"
#define LWIP_CHKSUM_ALGORITHM 2



#define PACK_STRUCT_STRUCT __attribute__((packed))
#define PACK_STRUCT_BEGIN 
#define PACK_STRUCT_END 
# 53 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch/cc.h"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdio.h" 1



#define _STDIO_H 





#define __NEED_FILE 
#define __NEED_va_list 
#define __NEED_size_t 




#define __NEED_ssize_t 
#define __NEED_off_t 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1



typedef unsigned size_t;
#define __DEFINED_size_t 



typedef int ssize_t;
#define __DEFINED_ssize_t 
# 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef __builtin_va_list va_list;
#define __DEFINED_va_list 
# 286 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef long long off_t;
#define __DEFINED_off_t 
# 387 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef struct __FILE_s FILE;
#define __DEFINED_FILE 
# 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdio.h" 2

#undef NULL



#define NULL ((void*)0)


#undef EOF
#define EOF (-1)

#undef SEEK_SET
#undef SEEK_CUR
#undef SEEK_END
#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

#define _IOFBF 0
#define _IOLBF 1
#define _IONBF 2

#define BUFSIZ 1024
#define FILENAME_MAX 4095
#define FOPEN_MAX 1000
#define TMP_MAX 10000
#define L_tmpnam 20

typedef union {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;

#define stdin (stdin)
#define stdout (stdout)
#define stderr (stderr)

FILE *fopen(const char *, const char *);
FILE *freopen(const char *, const char *, FILE *);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *, fpos_t *);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *, size_t, size_t, FILE *);
size_t fwrite(const void *, size_t, size_t, FILE *);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *, int, FILE *);
char *gets(char *);

int fputs(const char *, FILE *);
int puts(const char *);

int printf(const char *, ...);
int fprintf(FILE *, const char *, ...);
int sprintf(char *, const char *, ...);
int snprintf(char *, size_t, const char *, ...);

int vprintf(const char *, va_list);
int vfprintf(FILE *, const char *, va_list);
int vsprintf(char *, const char *, va_list);
int vsnprintf(char *, size_t, const char *, va_list);

int scanf(const char *, ...);
int fscanf(FILE *, const char *, ...);
int sscanf(const char *, const char *, ...);
int vscanf(const char *, va_list);
int vfscanf(FILE *, const char *, va_list);
int vsscanf(const char *, const char *, va_list);

void perror(const char *);

int setvbuf(FILE *, char *, int, size_t);
void setbuf(FILE *, char *);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *, size_t, const char *);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *, ...);
int vdprintf(int, const char *, va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **, size_t *, int, FILE *);
ssize_t getline(char **, size_t *, FILE *);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);
#define L_ctermid 20
# 54 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch/cc.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdlib.h" 1



#define _STDLIB_H 





#undef NULL



#define NULL ((void*)0)


#define __NEED_size_t 
#define __NEED_wchar_t 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1
# 27 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef unsigned wchar_t;
#define __DEFINED_wchar_t 
# 21 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdlib.h" 2

int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *, char **);
double strtod (const char *, char **);
long double strtold (const char *, char **);

long strtol (const char *, char **, int);
unsigned long strtoul (const char *, char **, int);
long long strtoll (const char *, char **, int);
unsigned long long strtoull (const char *, char **, int);

int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

void abort (void);
int atexit (void (*) (void));
void exit (int);
void _Exit (int);

char *getenv (const char *);

int system (const char *);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));
void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

int mblen (const char *, size_t);
int mbtowc (wchar_t *, const char *, size_t);
int wctomb (char *, wchar_t);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t wcstombs (char *, const wchar_t *, size_t);

#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0

#define MB_CUR_MAX ((size_t)+4)

#define RAND_MAX (0x7fffffff)







#define WEXITSTATUS(s) (((s) & 0xff00) >> 8)
#define WTERMSIG(s) ((s) & 0x7f)
#define WSTOPSIG(s) WEXITSTATUS(s)
#define WCOREDUMP(s) ((s) & 0x80)
#define WIFEXITED(s) (!WTERMSIG(s))
#define WIFSTOPPED(s) (((s) & 0xff) == 0x7f)
#define WIFSIGNALED(s) (((signed char) (((s) & 0x7f) + 1) >> 1) > 0)
#define WIFCONTINUED(s) ((s) == 0xffff)


int posix_memalign (void **, size_t, size_t);
int setenv (const char *, const char *, int);
int unsetenv (const char *);
int mkstemp (char *);
char *mkdtemp (char *);
int getsubopt (char **, char *const *, char **);
int rand_r (unsigned *);
# 55 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch/cc.h" 2

#define LWIP_PLATFORM_DIAG(x) do { printf x; fflush(stdout); } while(0)





#define LWIP_PLATFORM_ASSERT(x) do { printf("Assertion \"%s\" failed at line %d in %s\n", x, __LINE__, __FILE__); fflush(stdout); abort(); } while(0)
# 44 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch.h" 2
# 52 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch.h"
#define X8_F "02x"
# 68 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/arch.h"
#define PACK_STRUCT_FIELD(x) x




#define LWIP_UNUSED_ARG(x) (void)x
# 36 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/debug.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h" 1
# 37 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/debug.h" 2







#define LWIP_DBG_LEVEL_ALL 0x00
#define LWIP_DBG_LEVEL_OFF LWIP_DBG_LEVEL_ALL
#define LWIP_DBG_LEVEL_WARNING 0x01
#define LWIP_DBG_LEVEL_SERIOUS 0x02
#define LWIP_DBG_LEVEL_SEVERE 0x03
#define LWIP_DBG_MASK_LEVEL 0x03


#define LWIP_DBG_ON 0x80U

#define LWIP_DBG_OFF 0x00U


#define LWIP_DBG_TRACE 0x40U

#define LWIP_DBG_STATE 0x20U

#define LWIP_DBG_FRESH 0x10U

#define LWIP_DBG_HALT 0x08U


#define LWIP_ASSERT(message,assertion) do { if(!(assertion)) LWIP_PLATFORM_ASSERT(message); } while(0)







#define LWIP_ERROR(message,expression,handler) do { if (!(expression)) { LWIP_PLATFORM_ASSERT(message); handler;}} while(0)
# 95 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/debug.h"
#define LWIP_DEBUGF(debug,message) 
# 47 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h" 2
# 60 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SYS_LIGHTWEIGHT_PROT 0
# 84 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMCPY(dst,src,len) memcpy(dst,src,len)







#define SMEMCPY(dst,src,len) memcpy(dst,src,len)
# 124 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEM_ALIGNMENT 1
# 141 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_SEPARATE_POOLS 0
# 154 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_OVERFLOW_CHECK 0







#define MEMP_SANITY_CHECK 0
# 172 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEM_USE_POOLS 0







#define MEM_USE_POOLS_TRY_BIGGER_POOL 0
# 190 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_USE_CUSTOM_POOLS 0
# 212 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_ALLOW_MEM_FREE_FROM_OTHER_CONTEXT 0
# 226 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_PBUF 16







#define MEMP_NUM_RAW_PCB 4
# 243 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_UDP_PCB 4







#define MEMP_NUM_TCP_PCB 5







#define MEMP_NUM_TCP_PCB_LISTEN 8
# 275 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_REASSDATA 5
# 286 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_FRAG_PBUF 15
# 296 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_ARP_QUEUE 30
# 306 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_IGMP_GROUP 8
# 316 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_SYS_TIMEOUT (LWIP_TCP + IP_REASSEMBLY + LWIP_ARP + (2*LWIP_DHCP) + LWIP_AUTOIP + LWIP_IGMP + LWIP_DNS + PPP_SUPPORT)







#define MEMP_NUM_NETBUF 2







#define MEMP_NUM_NETCONN 4
# 341 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_TCPIP_MSG_API 8
# 350 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_TCPIP_MSG_INPKT 8






#define MEMP_NUM_SNMP_NODE 50







#define MEMP_NUM_SNMP_ROOTNODE 30
# 374 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_SNMP_VARBIND 2
# 383 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define MEMP_NUM_SNMP_VALUE 3







#define MEMP_NUM_NETDB 1







#define MEMP_NUM_LOCALHOSTLIST 1







#define MEMP_NUM_PPPOE_INTERFACES 1






#define PBUF_POOL_SIZE 16
# 426 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_ARP 1






#define ARP_TABLE_SIZE 10
# 444 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define ARP_QUEUEING 0
# 458 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define ETHARP_TRUST_IP_MAC 0
# 470 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define ETHARP_SUPPORT_VLAN 0






#define LWIP_ETHERNET (LWIP_ARP || PPPOE_SUPPORT)
# 486 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define ETH_PAD_SIZE 0
# 508 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_FORWARD 0
# 517 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_OPTIONS_ALLOWED 1
# 526 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_REASSEMBLY 1
# 535 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_FRAG 1
# 544 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_REASS_MAXAGE 3
# 554 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_REASS_MAX_PBUFS 10
# 565 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_FRAG_USES_STATIC_BUF 0
# 580 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_DEFAULT_TTL 255
# 589 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_SOF_BROADCAST 0







#define IP_SOF_BROADCAST_RECV 0
# 608 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define IP_FORWARD_ALLOW_TX_ON_RX_NETIF 0
# 617 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_RANDOMIZE_INITIAL_LOCAL_PORTS 0
# 630 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_ICMP 1






#define ICMP_TTL (IP_DEFAULT_TTL)






#define LWIP_BROADCAST_PING 0






#define LWIP_MULTICAST_PING 0
# 663 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_RAW 1






#define RAW_TTL (IP_DEFAULT_TTL)
# 682 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_DHCP 0






#define DHCP_DOES_ARP_CHECK ((LWIP_DHCP) && (LWIP_ARP))
# 701 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_AUTOIP 0







#define LWIP_DHCP_AUTOIP_COOP 0
# 720 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_DHCP_AUTOIP_COOP_TRIES 9
# 733 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_SNMP 0
# 742 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SNMP_CONCURRENT_REQUESTS 1







#define SNMP_TRAP_DESTINATIONS 1
# 759 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SNMP_PRIVATE_MIB 0
# 768 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SNMP_SAFE_REQUESTS 1







#define SNMP_MAX_OCTET_STRING_LEN 127
# 785 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SNMP_MAX_TREE_DEPTH 15







#define SNMP_MAX_VALUE_SIZE LWIP_MAX((SNMP_MAX_OCTET_STRING_LEN)+1, sizeof(s32_t)*(SNMP_MAX_TREE_DEPTH))
# 805 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_IGMP 0
# 818 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_DNS 0




#define DNS_TABLE_SIZE 4




#define DNS_MAX_NAME_LENGTH 256




#define DNS_MAX_SERVERS 2




#define DNS_DOES_NAME_CHECK 1




#define DNS_MSG_SIZE 512
# 857 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define DNS_LOCAL_HOSTLIST 0





#define DNS_LOCAL_HOSTLIST_IS_DYNAMIC 0
# 875 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_UDP 1






#define LWIP_UDPLITE 0






#define UDP_TTL (IP_DEFAULT_TTL)






#define LWIP_NETBUF_RECVINFO 0
# 908 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_TCP 1






#define TCP_TTL (IP_DEFAULT_TTL)
# 930 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCP_MAXRTX 12






#define TCP_SYNMAXRTX 6







#define TCP_QUEUE_OOSEQ (LWIP_TCP)
# 956 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCP_MSS 536
# 968 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCP_CALCULATE_EFF_SEND_MSS 1
# 994 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCP_SNDLOWAT LWIP_MIN(LWIP_MAX(((TCP_SND_BUF)/2), (2 * TCP_MSS) + 1), (TCP_SND_BUF) - 1)
# 1003 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCP_SNDQUEUELOWAT LWIP_MAX(((TCP_SND_QUEUELEN)/2), 5)







#define TCP_OOSEQ_MAX_BYTES 0







#define TCP_OOSEQ_MAX_PBUFS 0






#define TCP_LISTEN_BACKLOG 0
# 1035 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCP_DEFAULT_LISTEN_BACKLOG 0xff
# 1053 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCP_OVERSIZE TCP_MSS






#define LWIP_TCP_TIMESTAMPS 0







#define TCP_WND_UPDATE_THRESHOLD (TCP_WND / 4)
# 1079 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_EVENT_API 0
#define LWIP_CALLBACK_API 1
# 1095 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define PBUF_LINK_HLEN (14 + ETH_PAD_SIZE)
# 1104 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define PBUF_POOL_BUFSIZE LWIP_MEM_ALIGN_SIZE(TCP_MSS+40+PBUF_LINK_HLEN)
# 1117 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_NETIF_HOSTNAME 0






#define LWIP_NETIF_API 0







#define LWIP_NETIF_STATUS_CALLBACK 0







#define LWIP_NETIF_LINK_CALLBACK 0







#define LWIP_NETIF_REMOVE_CALLBACK 0
# 1159 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_NETIF_HWADDRHINT 0







#define LWIP_NETIF_LOOPBACK 0







#define LWIP_LOOPBACK_MAX_PBUFS 0
# 1192 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_NETIF_LOOPBACK_MULTITHREADING (!NO_SYS)
# 1205 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_NETIF_TX_SINGLE_PBUF 0
# 1217 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_HAVE_LOOPIF 0
# 1229 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_HAVE_SLIPIF 0
# 1241 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCPIP_THREAD_NAME "tcpip_thread"
# 1250 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCPIP_THREAD_STACKSIZE 0
# 1259 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCPIP_THREAD_PRIO 1
# 1268 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define TCPIP_MBOX_SIZE 0






#define SLIPIF_THREAD_NAME "slipif_loop"
# 1284 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SLIPIF_THREAD_STACKSIZE 0
# 1293 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SLIPIF_THREAD_PRIO 1






#define PPP_THREAD_NAME "pppInputThread"
# 1309 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define PPP_THREAD_STACKSIZE 0
# 1318 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define PPP_THREAD_PRIO 1






#define DEFAULT_THREAD_NAME "lwIP"
# 1334 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define DEFAULT_THREAD_STACKSIZE 0
# 1343 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define DEFAULT_THREAD_PRIO 1
# 1352 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define DEFAULT_RAW_RECVMBOX_SIZE 0
# 1361 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define DEFAULT_UDP_RECVMBOX_SIZE 0
# 1370 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define DEFAULT_TCP_RECVMBOX_SIZE 0
# 1379 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define DEFAULT_ACCEPTMBOX_SIZE 0
# 1392 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_TCPIP_CORE_LOCKING 0







#define LWIP_TCPIP_CORE_LOCKING_INPUT 0
# 1414 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_TCPIP_TIMEOUT 1
# 1434 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_COMPAT_SOCKETS 1
# 1443 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_POSIX_SOCKETS_IO_NAMES 1
# 1452 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_TCP_KEEPALIVE 0







#define LWIP_SO_SNDTIMEO 0







#define LWIP_SO_RCVTIMEO 0






#define LWIP_SO_RCVBUF 0






#define RECV_BUFSIZE_DEFAULT INT_MAX






#define SO_REUSE 0
# 1498 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define SO_REUSE_RXTOALL 0
# 1510 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_STATS 1
# 1519 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_STATS_DISPLAY 0






#define LINK_STATS 1






#define ETHARP_STATS (LWIP_ARP)






#define IP_STATS 1







#define IPFRAG_STATS (IP_REASSEMBLY || IP_FRAG)






#define ICMP_STATS 1






#define IGMP_STATS (LWIP_IGMP)







#define UDP_STATS (LWIP_UDP)







#define TCP_STATS (LWIP_TCP)






#define MEM_STATS ((MEM_LIBC_MALLOC == 0) && (MEM_USE_POOLS == 0))






#define MEMP_STATS (MEMP_MEM_MALLOC == 0)






#define SYS_STATS (NO_SYS == 0)
# 1627 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define PPP_SUPPORT 0






#define PPPOE_SUPPORT 0






#define PPPOS_SUPPORT PPP_SUPPORT
# 1791 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define CHECKSUM_GEN_IP 1






#define CHECKSUM_GEN_UDP 1






#define CHECKSUM_GEN_TCP 1






#define CHECKSUM_GEN_ICMP 1






#define CHECKSUM_CHECK_IP 1






#define CHECKSUM_CHECK_UDP 1






#define CHECKSUM_CHECK_TCP 1







#define LWIP_CHECKSUM_ON_COPY 0
# 1883 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/opt.h"
#define LWIP_DBG_MIN_LEVEL LWIP_DBG_LEVEL_ALL







#define LWIP_DBG_TYPES_ON LWIP_DBG_ON






#define ETHARP_DEBUG LWIP_DBG_OFF






#define NETIF_DEBUG LWIP_DBG_OFF






#define PBUF_DEBUG LWIP_DBG_OFF






#define API_LIB_DEBUG LWIP_DBG_OFF






#define API_MSG_DEBUG LWIP_DBG_OFF






#define SOCKETS_DEBUG LWIP_DBG_OFF






#define ICMP_DEBUG LWIP_DBG_OFF






#define IGMP_DEBUG LWIP_DBG_OFF






#define INET_DEBUG LWIP_DBG_OFF






#define IP_DEBUG LWIP_DBG_OFF






#define IP_REASS_DEBUG LWIP_DBG_OFF






#define RAW_DEBUG LWIP_DBG_OFF






#define MEM_DEBUG LWIP_DBG_OFF






#define MEMP_DEBUG LWIP_DBG_OFF






#define SYS_DEBUG LWIP_DBG_OFF






#define TIMERS_DEBUG LWIP_DBG_OFF






#define TCP_DEBUG LWIP_DBG_OFF






#define TCP_INPUT_DEBUG LWIP_DBG_OFF






#define TCP_FR_DEBUG LWIP_DBG_OFF







#define TCP_RTO_DEBUG LWIP_DBG_OFF






#define TCP_CWND_DEBUG LWIP_DBG_OFF






#define TCP_WND_DEBUG LWIP_DBG_OFF






#define TCP_OUTPUT_DEBUG LWIP_DBG_OFF






#define TCP_RST_DEBUG LWIP_DBG_OFF






#define TCP_QLEN_DEBUG LWIP_DBG_OFF






#define UDP_DEBUG LWIP_DBG_OFF






#define TCPIP_DEBUG LWIP_DBG_OFF






#define PPP_DEBUG LWIP_DBG_OFF






#define SLIP_DEBUG LWIP_DBG_OFF






#define DHCP_DEBUG LWIP_DBG_OFF






#define AUTOIP_DEBUG LWIP_DBG_OFF






#define SNMP_MSG_DEBUG LWIP_DBG_OFF






#define SNMP_MIB_DEBUG LWIP_DBG_OFF






#define DNS_DEBUG LWIP_DBG_OFF
# 40 "/home/mint/seL4/dhs-demo-feb-2018/libs/liblwip/lwip-1.4.1/src/core/ipv4/inet.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/inet.h" 1
# 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/inet.h"
#define __LWIP_INET_H__ 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/def.h" 1
# 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/def.h"
#define __LWIP_DEF_H__ 
# 43 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/def.h"
#define LWIP_MAX(x,y) (((x) > (y)) ? (x) : (y))
#define LWIP_MIN(x,y) (((x) < (y)) ? (x) : (y))







#define LWIP_MAKE_U16(a,b) ((a << 8) | b)





#define LWIP_PLATFORM_BYTESWAP 0
# 77 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/def.h"
#define htons(x) lwip_htons(x)
#define ntohs(x) lwip_ntohs(x)
#define htonl(x) lwip_htonl(x)
#define ntohl(x) lwip_ntohl(x)
# 99 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);





#define PP_HTONS(x) ((((x) & 0xff) << 8) | (((x) & 0xff00) >> 8))
#define PP_NTOHS(x) PP_HTONS(x)
#define PP_HTONL(x) ((((x) & 0xff) << 24) | (((x) & 0xff00) << 8) | (((x) & 0xff0000UL) >> 8) | (((x) & 0xff000000UL) >> 24))



#define PP_NTOHL(x) PP_HTONL(x)
# 37 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/inet.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/ip_addr.h" 1
# 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/ip_addr.h"
#define __LWIP_IP_ADDR_H__ 
# 44 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/ip_addr.h"
struct ip_addr {
  u32_t addr;
};







struct ip_addr_packed {
  u32_t addr;
} __attribute__((packed));







typedef struct ip_addr ip_addr_t;
typedef struct ip_addr_packed ip_addr_p_t;
# 74 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/ip_addr.h"

struct ip_addr2 {
  u16_t addrw[2];
} __attribute__((packed));






struct netif;

extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;




#define IP_ADDR_ANY ((ip_addr_t *)&ip_addr_any)
#define IP_ADDR_BROADCAST ((ip_addr_t *)&ip_addr_broadcast)


#define IPADDR_NONE ((u32_t)0xffffffffUL)

#define IPADDR_LOOPBACK ((u32_t)0x7f000001UL)

#define IPADDR_ANY ((u32_t)0x00000000UL)

#define IPADDR_BROADCAST ((u32_t)0xffffffffUL)





#define IP_CLASSA(a) ((((u32_t)(a)) & 0x80000000UL) == 0)
#define IP_CLASSA_NET 0xff000000
#define IP_CLASSA_NSHIFT 24
#define IP_CLASSA_HOST (0xffffffff & ~IP_CLASSA_NET)
#define IP_CLASSA_MAX 128

#define IP_CLASSB(a) ((((u32_t)(a)) & 0xc0000000UL) == 0x80000000UL)
#define IP_CLASSB_NET 0xffff0000
#define IP_CLASSB_NSHIFT 16
#define IP_CLASSB_HOST (0xffffffff & ~IP_CLASSB_NET)
#define IP_CLASSB_MAX 65536

#define IP_CLASSC(a) ((((u32_t)(a)) & 0xe0000000UL) == 0xc0000000UL)
#define IP_CLASSC_NET 0xffffff00
#define IP_CLASSC_NSHIFT 8
#define IP_CLASSC_HOST (0xffffffff & ~IP_CLASSC_NET)

#define IP_CLASSD(a) (((u32_t)(a) & 0xf0000000UL) == 0xe0000000UL)
#define IP_CLASSD_NET 0xf0000000
#define IP_CLASSD_NSHIFT 28
#define IP_CLASSD_HOST 0x0fffffff
#define IP_MULTICAST(a) IP_CLASSD(a)

#define IP_EXPERIMENTAL(a) (((u32_t)(a) & 0xf0000000UL) == 0xf0000000UL)
#define IP_BADCLASS(a) (((u32_t)(a) & 0xf0000000UL) == 0xf0000000UL)

#define IP_LOOPBACKNET 127
# 147 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/ip_addr.h"
#define IP4_ADDR(ipaddr,a,b,c,d) (ipaddr)->addr = ((u32_t)((d) & 0xff) << 24) | ((u32_t)((c) & 0xff) << 16) | ((u32_t)((b) & 0xff) << 8) | (u32_t)((a) & 0xff)
# 158 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/ip_addr.h"
#define IPADDR2_COPY(dest,src) SMEMCPY(dest, src, sizeof(ip_addr_t))



#define ip_addr_copy(dest,src) ((dest).addr = (src).addr)

#define ip_addr_set(dest,src) ((dest)->addr = ((src) == NULL ? 0 : (src)->addr))



#define ip_addr_set_zero(ipaddr) ((ipaddr)->addr = 0)

#define ip_addr_set_any(ipaddr) ((ipaddr)->addr = IPADDR_ANY)

#define ip_addr_set_loopback(ipaddr) ((ipaddr)->addr = PP_HTONL(IPADDR_LOOPBACK))


#define ip_addr_set_hton(dest,src) ((dest)->addr = ((src) == NULL ? 0: htonl((src)->addr)))



#define ip4_addr_set_u32(dest_ipaddr,src_u32) ((dest_ipaddr)->addr = (src_u32))

#define ip4_addr_get_u32(src_ipaddr) ((src_ipaddr)->addr)


#define ip_addr_get_network(target,host,netmask) ((target)->addr = ((host)->addr) & ((netmask)->addr))
# 194 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/ip_addr.h"
#define ip_addr_netcmp(addr1,addr2,mask) (((addr1)->addr & (mask)->addr) == ((addr2)->addr & (mask)->addr))



#define ip_addr_cmp(addr1,addr2) ((addr1)->addr == (addr2)->addr)

#define ip_addr_isany(addr1) ((addr1) == NULL || (addr1)->addr == IPADDR_ANY)

#define ip_addr_isbroadcast(ipaddr,netif) ip4_addr_isbroadcast((ipaddr)->addr, (netif))
u8_t ip4_addr_isbroadcast(u32_t addr, const struct netif *netif);

#define ip_addr_netmask_valid(netmask) ip4_addr_netmask_valid((netmask)->addr)
u8_t ip4_addr_netmask_valid(u32_t netmask);

#define ip_addr_ismulticast(addr1) (((addr1)->addr & PP_HTONL(0xf0000000UL)) == PP_HTONL(0xe0000000UL))

#define ip_addr_islinklocal(addr1) (((addr1)->addr & PP_HTONL(0xffff0000UL)) == PP_HTONL(0xa9fe0000UL))

#define ip_addr_debug_print(debug,ipaddr) LWIP_DEBUGF(debug, ("%"U16_F".%"U16_F".%"U16_F".%"U16_F, ipaddr != NULL ? ip4_addr1_16(ipaddr) : 0, ipaddr != NULL ? ip4_addr2_16(ipaddr) : 0, ipaddr != NULL ? ip4_addr3_16(ipaddr) : 0, ipaddr != NULL ? ip4_addr4_16(ipaddr) : 0))







#define ip4_addr1(ipaddr) (((u8_t*)(ipaddr))[0])
#define ip4_addr2(ipaddr) (((u8_t*)(ipaddr))[1])
#define ip4_addr3(ipaddr) (((u8_t*)(ipaddr))[2])
#define ip4_addr4(ipaddr) (((u8_t*)(ipaddr))[3])


#define ip4_addr1_16(ipaddr) ((u16_t)ip4_addr1(ipaddr))
#define ip4_addr2_16(ipaddr) ((u16_t)ip4_addr2(ipaddr))
#define ip4_addr3_16(ipaddr) ((u16_t)ip4_addr3(ipaddr))
#define ip4_addr4_16(ipaddr) ((u16_t)ip4_addr4(ipaddr))


#define ip_ntoa(ipaddr) ipaddr_ntoa(ipaddr)

u32_t ipaddr_addr(const char *cp);
int ipaddr_aton(const char *cp, ip_addr_t *addr);

char *ipaddr_ntoa(const ip_addr_t *addr);
char *ipaddr_ntoa_r(const ip_addr_t *addr, char *buf, int buflen);
# 38 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/lwip/inet.h" 2






struct in_addr {
  u32_t s_addr;
};


#define INADDR_NONE IPADDR_NONE

#define INADDR_LOOPBACK IPADDR_LOOPBACK

#define INADDR_ANY IPADDR_ANY

#define INADDR_BROADCAST IPADDR_BROADCAST





#define IN_CLASSA(a) IP_CLASSA(a)
#define IN_CLASSA_NET IP_CLASSA_NET
#define IN_CLASSA_NSHIFT IP_CLASSA_NSHIFT
#define IN_CLASSA_HOST IP_CLASSA_HOST
#define IN_CLASSA_MAX IP_CLASSA_MAX

#define IN_CLASSB(b) IP_CLASSB(b)
#define IN_CLASSB_NET IP_CLASSB_NET
#define IN_CLASSB_NSHIFT IP_CLASSB_NSHIFT
#define IN_CLASSB_HOST IP_CLASSB_HOST
#define IN_CLASSB_MAX IP_CLASSB_MAX

#define IN_CLASSC(c) IP_CLASSC(c)
#define IN_CLASSC_NET IP_CLASSC_NET
#define IN_CLASSC_NSHIFT IP_CLASSC_NSHIFT
#define IN_CLASSC_HOST IP_CLASSC_HOST
#define IN_CLASSC_MAX IP_CLASSC_MAX

#define IN_CLASSD(d) IP_CLASSD(d)
#define IN_CLASSD_NET IP_CLASSD_NET
#define IN_CLASSD_NSHIFT IP_CLASSD_NSHIFT
#define IN_CLASSD_HOST IP_CLASSD_HOST
#define IN_CLASSD_MAX IP_CLASSD_MAX

#define IN_MULTICAST(a) IP_MULTICAST(a)

#define IN_EXPERIMENTAL(a) IP_EXPERIMENTAL(a)
#define IN_BADCLASS(a) IP_BADCLASS(a)

#define IN_LOOPBACKNET IP_LOOPBACKNET

#define inet_addr_from_ipaddr(target_inaddr,source_ipaddr) ((target_inaddr)->s_addr = ip4_addr_get_u32(source_ipaddr))
#define inet_addr_to_ipaddr(target_ipaddr,source_inaddr) (ip4_addr_set_u32(target_ipaddr, (source_inaddr)->s_addr))

#define inet_addr_to_ipaddr_p(target_ipaddr_p,source_inaddr) ((target_ipaddr_p) = (ip_addr_t*)&((source_inaddr)->s_addr))


#define inet_addr(cp) ipaddr_addr(cp)
#define inet_aton(cp,addr) ipaddr_aton(cp, (ip_addr_t*)addr)
#define inet_ntoa(addr) ipaddr_ntoa((ip_addr_t*)&(addr))
#define inet_ntoa_r(addr,buf,buflen) ipaddr_ntoa_r((ip_addr_t*)&(addr), buf, buflen)
# 42 "/home/mint/seL4/dhs-demo-feb-2018/libs/liblwip/lwip-1.4.1/src/core/ipv4/inet.c" 2
