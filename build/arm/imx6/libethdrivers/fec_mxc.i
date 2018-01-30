# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/build/arm/imx6/libethdrivers//"
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c"
# 28 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/common.h" 1
# 28 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/common.h"
#define __COMMON_H_ 1

#undef _LINUX_CONFIG_H
#define _LINUX_CONFIG_H 1


# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h" 1
# 27 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h"
#define __CONFIG_H 

#define CONFIG_MX6 
#define CONFIG_MX6Q 

#define CONFIG_MACH_TYPE 3769

# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/imx-regs.h" 1
# 24 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/imx-regs.h"
#define __ASM_ARCH_MX6_IMX_REGS_H__ 

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
# 27 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/imx-regs.h" 2

#define ARCH_MXC 

#define CONFIG_SYS_CACHELINE_SIZE 32

#define ROMCP_ARB_BASE_ADDR 0x00000000
#define ROMCP_ARB_END_ADDR 0x000FFFFF
#define CAAM_ARB_BASE_ADDR 0x00100000
#define CAAM_ARB_END_ADDR 0x00103FFF
#define APBH_DMA_ARB_BASE_ADDR 0x00110000
#define APBH_DMA_ARB_END_ADDR 0x00117FFF
#define HDMI_ARB_BASE_ADDR 0x00120000
#define HDMI_ARB_END_ADDR 0x00128FFF
#define GPU_3D_ARB_BASE_ADDR 0x00130000
#define GPU_3D_ARB_END_ADDR 0x00133FFF
#define GPU_2D_ARB_BASE_ADDR 0x00134000
#define GPU_2D_ARB_END_ADDR 0x00137FFF
#define DTCP_ARB_BASE_ADDR 0x00138000
#define DTCP_ARB_END_ADDR 0x0013BFFF


#define GPV2_BASE_ADDR 0x00200000
#define GPV3_BASE_ADDR 0x00300000
#define GPV4_BASE_ADDR 0x00800000
#define IRAM_BASE_ADDR 0x00900000
#define SCU_BASE_ADDR 0x00A00000
#define IC_INTERFACES_BASE_ADDR 0x00A00100
#define GLOBAL_TIMER_BASE_ADDR 0x00A00200
#define PRIVATE_TIMERS_WD_BASE_ADDR 0x00A00600
#define IC_DISTRIBUTOR_BASE_ADDR 0x00A01000
#define GPV0_BASE_ADDR 0x00B00000
#define GPV1_BASE_ADDR 0x00C00000
#define PCIE_ARB_BASE_ADDR 0x01000000
#define PCIE_ARB_END_ADDR 0x01FFFFFF

#define AIPS1_ARB_BASE_ADDR 0x02000000
#define AIPS1_ARB_END_ADDR 0x020FFFFF
#define AIPS2_ARB_BASE_ADDR 0x02100000
#define AIPS2_ARB_END_ADDR 0x021FFFFF
#define SATA_ARB_BASE_ADDR 0x02200000
#define SATA_ARB_END_ADDR 0x02203FFF
#define OPENVG_ARB_BASE_ADDR 0x02204000
#define OPENVG_ARB_END_ADDR 0x02207FFF
#define HSI_ARB_BASE_ADDR 0x02208000
#define HSI_ARB_END_ADDR 0x0220BFFF
#define IPU1_ARB_BASE_ADDR 0x02400000
#define IPU1_ARB_END_ADDR 0x027FFFFF
#define IPU2_ARB_BASE_ADDR 0x02800000
#define IPU2_ARB_END_ADDR 0x02BFFFFF
#define WEIM_ARB_BASE_ADDR 0x08000000
#define WEIM_ARB_END_ADDR 0x0FFFFFFF

#define MMDC0_ARB_BASE_ADDR 0x10000000
#define MMDC0_ARB_END_ADDR 0x7FFFFFFF
#define MMDC1_ARB_BASE_ADDR 0x80000000
#define MMDC1_ARB_END_ADDR 0xFFFFFFFF

#define IPU_SOC_BASE_ADDR IPU1_ARB_BASE_ADDR
#define IPU_SOC_OFFSET 0x00200000


#define ATZ1_BASE_ADDR AIPS1_ARB_BASE_ADDR
#define ATZ2_BASE_ADDR AIPS2_ARB_BASE_ADDR
#define AIPS1_BASE_ADDR AIPS1_ON_BASE_ADDR
#define AIPS2_BASE_ADDR AIPS2_ON_BASE_ADDR

#define SPDIF_BASE_ADDR (ATZ1_BASE_ADDR + 0x04000)
#define ECSPI1_BASE_ADDR (ATZ1_BASE_ADDR + 0x08000)
#define ECSPI2_BASE_ADDR (ATZ1_BASE_ADDR + 0x0C000)
#define ECSPI3_BASE_ADDR (ATZ1_BASE_ADDR + 0x10000)
#define ECSPI4_BASE_ADDR (ATZ1_BASE_ADDR + 0x14000)
#define ECSPI5_BASE_ADDR (ATZ1_BASE_ADDR + 0x18000)
#define UART1_BASE (ATZ1_BASE_ADDR + 0x20000)
#define ESAI1_BASE_ADDR (ATZ1_BASE_ADDR + 0x24000)
#define SSI1_BASE_ADDR (ATZ1_BASE_ADDR + 0x28000)
#define SSI2_BASE_ADDR (ATZ1_BASE_ADDR + 0x2C000)
#define SSI3_BASE_ADDR (ATZ1_BASE_ADDR + 0x30000)
#define ASRC_BASE_ADDR (ATZ1_BASE_ADDR + 0x34000)
#define SPBA_BASE_ADDR (ATZ1_BASE_ADDR + 0x3C000)
#define VPU_BASE_ADDR (ATZ1_BASE_ADDR + 0x40000)
#define AIPS1_ON_BASE_ADDR (ATZ1_BASE_ADDR + 0x7C000)

#define AIPS1_OFF_BASE_ADDR (ATZ1_BASE_ADDR + 0x80000)
#define PWM1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x0000)
#define PWM2_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x4000)
#define PWM3_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x8000)
#define PWM4_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0xC000)
#define CAN1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x10000)
#define CAN2_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x14000)
#define GPT1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x18000)
#define GPIO1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x1C000)
#define GPIO2_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x20000)
#define GPIO3_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x24000)
#define GPIO4_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x28000)
#define GPIO5_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x2C000)
#define GPIO6_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x30000)
#define GPIO7_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x34000)
#define KPP_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x38000)
#define WDOG1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x3C000)
#define WDOG2_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x40000)
#define ANATOP_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x48000)
#define USB_PHY0_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x49000)
#define USB_PHY1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x4a000)
#define CCM_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x44000)
#define SNVS_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x4C000)
#define EPIT1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x50000)
#define EPIT2_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x54000)
#define SRC_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x58000)
#define GPC_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x5C000)
#define IOMUXC_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x60000)
#define DCIC1_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x64000)
#define DCIC2_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x68000)
#define DMA_REQ_PORT_HOST_BASE_ADDR (AIPS1_OFF_BASE_ADDR + 0x6C000)

#define AIPS2_ON_BASE_ADDR (ATZ2_BASE_ADDR + 0x7C000)
#define AIPS2_OFF_BASE_ADDR (ATZ2_BASE_ADDR + 0x80000)
#define CAAM_BASE_ADDR (ATZ2_BASE_ADDR)
#define ARM_BASE_ADDR (ATZ2_BASE_ADDR + 0x40000)
#define USBOH3_PL301_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x0000)
#define USBOH3_USB_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x4000)
#define ENET_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x8000)
#define MLB_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0xC000)
#define USDHC1_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x10000)
#define USDHC2_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x14000)
#define USDHC3_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x18000)
#define USDHC4_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x1C000)
#define I2C1_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x20000)
#define I2C2_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x24000)
#define I2C3_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x28000)
#define ROMCP_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x2C000)
#define MMDC_P0_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x30000)
#define MMDC_P1_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x34000)
#define WEIM_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x38000)
#define OCOTP_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x3C000)
#define CSU_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x40000)
#define IP2APB_PERFMON1_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x44000)
#define IP2APB_PERFMON2_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x48000)
#define IP2APB_PERFMON3_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x4C000)
#define IP2APB_TZASC1_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x50000)
#define IP2APB_TZASC2_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x54000)
#define AUDMUX_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x58000)
#define MIPI_CSI2_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x5C000)
#define MIPI_DSI_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x60000)
#define VDOA_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x64000)
#define UART2_BASE (AIPS2_OFF_BASE_ADDR + 0x68000)
#define UART3_BASE (AIPS2_OFF_BASE_ADDR + 0x6C000)
#define UART4_BASE (AIPS2_OFF_BASE_ADDR + 0x70000)
#define UART5_BASE (AIPS2_OFF_BASE_ADDR + 0x74000)
#define IP2APB_USBPHY1_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x78000)
#define IP2APB_USBPHY2_BASE_ADDR (AIPS2_OFF_BASE_ADDR + 0x7C000)

#define CHIP_REV_1_0 0x10
#define IRAM_SIZE 0x00040000
#define IMX_IIM_BASE OCOTP_BASE_ADDR
#define FEC_QUIRK_ENET_MAC 





struct src {
 uint32_t scr;
 uint32_t sbmr1;
 uint32_t srsr;
 uint32_t reserved1[2];
 uint32_t sisr;
 uint32_t simr;
 uint32_t sbmr2;
 uint32_t gpr1;
 uint32_t gpr2;
 uint32_t gpr3;
 uint32_t gpr4;
 uint32_t gpr5;
 uint32_t gpr6;
 uint32_t gpr7;
 uint32_t gpr8;
 uint32_t gpr9;
 uint32_t gpr10;
};


struct ocotp_regs {
 uint32_t reserved[0x198];
 uint32_t gp1;
};


#define IOMUXC_GPR3_GPU_DBG_OFFSET 29
#define IOMUXC_GPR3_GPU_DBG_MASK (3<<IOMUXC_GPR3_GPU_DBG_OFFSET)
#define IOMUXC_GPR3_BCH_WR_CACHE_CTL_OFFSET 28
#define IOMUXC_GPR3_BCH_WR_CACHE_CTL_MASK (1<<IOMUXC_GPR3_BCH_WR_CACHE_CTL_OFFSET)
#define IOMUXC_GPR3_BCH_RD_CACHE_CTL_OFFSET 27
#define IOMUXC_GPR3_BCH_RD_CACHE_CTL_MASK (1<<IOMUXC_GPR3_BCH_RD_CACHE_CTL_OFFSET)
#define IOMUXC_GPR3_uSDHCx_WR_CACHE_CTL_OFFSET 26
#define IOMUXC_GPR3_uSDHCx_WR_CACHE_CTL_MASK (1<<IOMUXC_GPR3_uSDHCx_WR_CACHE_CTL_OFFSET)
#define IOMUXC_GPR3_uSDHCx_RD_CACHE_CTL_OFFSET 25
#define IOMUXC_GPR3_uSDHCx_RD_CACHE_CTL_MASK (1<<IOMUXC_GPR3_uSDHCx_RD_CACHE_CTL_OFFSET)
#define IOMUXC_GPR3_OCRAM_CTL_OFFSET 21
#define IOMUXC_GPR3_OCRAM_CTL_MASK (0xf<<IOMUXC_GPR3_OCRAM_CTL_OFFSET)
#define IOMUXC_GPR3_OCRAM_STATUS_OFFSET 17
#define IOMUXC_GPR3_OCRAM_STATUS_MASK (0xf<<IOMUXC_GPR3_OCRAM_STATUS_OFFSET)
#define IOMUXC_GPR3_CORE3_DBG_ACK_EN_OFFSET 16
#define IOMUXC_GPR3_CORE3_DBG_ACK_EN_MASK (1<<IOMUXC_GPR3_CORE3_DBG_ACK_EN_OFFSET)
#define IOMUXC_GPR3_CORE2_DBG_ACK_EN_OFFSET 15
#define IOMUXC_GPR3_CORE2_DBG_ACK_EN_MASK (1<<IOMUXC_GPR3_CORE2_DBG_ACK_EN_OFFSET)
#define IOMUXC_GPR3_CORE1_DBG_ACK_EN_OFFSET 14
#define IOMUXC_GPR3_CORE1_DBG_ACK_EN_MASK (1<<IOMUXC_GPR3_CORE1_DBG_ACK_EN_OFFSET)
#define IOMUXC_GPR3_CORE0_DBG_ACK_EN_OFFSET 13
#define IOMUXC_GPR3_CORE0_DBG_ACK_EN_MASK (1<<IOMUXC_GPR3_CORE0_DBG_ACK_EN_OFFSET)
#define IOMUXC_GPR3_TZASC2_BOOT_LOCK_OFFSET 12
#define IOMUXC_GPR3_TZASC2_BOOT_LOCK_MASK (1<<IOMUXC_GPR3_TZASC2_BOOT_LOCK_OFFSET)
#define IOMUXC_GPR3_TZASC1_BOOT_LOCK_OFFSET 11
#define IOMUXC_GPR3_TZASC1_BOOT_LOCK_MASK (1<<IOMUXC_GPR3_TZASC1_BOOT_LOCK_OFFSET)
#define IOMUXC_GPR3_IPU_DIAG_OFFSET 10
#define IOMUXC_GPR3_IPU_DIAG_MASK (1<<IOMUXC_GPR3_IPU_DIAG_OFFSET)

#define IOMUXC_GPR3_MUX_SRC_IPU1_DI0 0
#define IOMUXC_GPR3_MUX_SRC_IPU1_DI1 1
#define IOMUXC_GPR3_MUX_SRC_IPU2_DI0 2
#define IOMUXC_GPR3_MUX_SRC_IPU2_DI1 3

#define IOMUXC_GPR3_LVDS1_MUX_CTL_OFFSET 8
#define IOMUXC_GPR3_LVDS1_MUX_CTL_MASK (3<<IOMUXC_GPR3_LVDS1_MUX_CTL_OFFSET)

#define IOMUXC_GPR3_LVDS0_MUX_CTL_OFFSET 6
#define IOMUXC_GPR3_LVDS0_MUX_CTL_MASK (3<<IOMUXC_GPR3_LVDS0_MUX_CTL_OFFSET)

#define IOMUXC_GPR3_MIPI_MUX_CTL_OFFSET 4
#define IOMUXC_GPR3_MIPI_MUX_CTL_MASK (3<<IOMUXC_GPR3_MIPI_MUX_CTL_OFFSET)

#define IOMUXC_GPR3_HDMI_MUX_CTL_OFFSET 2
#define IOMUXC_GPR3_HDMI_MUX_CTL_MASK (3<<IOMUXC_GPR3_HDMI_MUX_CTL_OFFSET)


struct iomuxc {
 uint32_t gpr[14];
 uint32_t omux[5];

};

#define IOMUXC_GPR2_COUNTER_RESET_VAL_OFFSET 20
#define IOMUXC_GPR2_COUNTER_RESET_VAL_MASK (3<<IOMUXC_GPR2_COUNTER_RESET_VAL_OFFSET)
#define IOMUXC_GPR2_LVDS_CLK_SHIFT_OFFSET 16
#define IOMUXC_GPR2_LVDS_CLK_SHIFT_MASK (7<<IOMUXC_GPR2_LVDS_CLK_SHIFT_OFFSET)

#define IOMUXC_GPR2_BGREF_RRMODE_OFFSET 15
#define IOMUXC_GPR2_BGREF_RRMODE_MASK (1<<IOMUXC_GPR2_BGREF_RRMODE_OFFSET)
#define IOMUXC_GPR2_BGREF_RRMODE_INTERNAL_RES (1<<IOMUXC_GPR2_BGREF_RRMODE_OFFSET)
#define IOMUXC_GPR2_BGREF_RRMODE_EXTERNAL_RES (0<<IOMUXC_GPR2_BGREF_RRMODE_OFFSET)
#define IOMUXC_GPR2_VSYNC_ACTIVE_HIGH 0
#define IOMUXC_GPR2_VSYNC_ACTIVE_LOW 1

#define IOMUXC_GPR2_DI1_VS_POLARITY_OFFSET 10
#define IOMUXC_GPR2_DI1_VS_POLARITY_MASK (1<<IOMUXC_GPR2_DI1_VS_POLARITY_OFFSET)
#define IOMUXC_GPR2_DI1_VS_POLARITY_ACTIVE_HIGH (IOMUXC_GPR2_VSYNC_ACTIVE_HIGH<<IOMUXC_GPR2_DI1_VS_POLARITY_OFFSET)
#define IOMUXC_GPR2_DI1_VS_POLARITY_ACTIVE_LOW (IOMUXC_GPR2_VSYNC_ACTIVE_LOW<<IOMUXC_GPR2_DI1_VS_POLARITY_OFFSET)

#define IOMUXC_GPR2_DI0_VS_POLARITY_OFFSET 9
#define IOMUXC_GPR2_DI0_VS_POLARITY_MASK (1<<IOMUXC_GPR2_DI0_VS_POLARITY_OFFSET)
#define IOMUXC_GPR2_DI0_VS_POLARITY_ACTIVE_HIGH (IOMUXC_GPR2_VSYNC_ACTIVE_HIGH<<IOMUXC_GPR2_DI0_VS_POLARITY_OFFSET)
#define IOMUXC_GPR2_DI0_VS_POLARITY_ACTIVE_LOW (IOMUXC_GPR2_VSYNC_ACTIVE_LOW<<IOMUXC_GPR2_DI0_VS_POLARITY_OFFSET)

#define IOMUXC_GPR2_BITMAP_SPWG 0
#define IOMUXC_GPR2_BITMAP_JEIDA 1

#define IOMUXC_GPR2_BIT_MAPPING_CH1_OFFSET 8
#define IOMUXC_GPR2_BIT_MAPPING_CH1_MASK (1<<IOMUXC_GPR2_BIT_MAPPING_CH1_OFFSET)
#define IOMUXC_GPR2_BIT_MAPPING_CH1_JEIDA (IOMUXC_GPR2_BITMAP_JEIDA<<IOMUXC_GPR2_BIT_MAPPING_CH1_OFFSET)
#define IOMUXC_GPR2_BIT_MAPPING_CH1_SPWG (IOMUXC_GPR2_BITMAP_SPWG<<IOMUXC_GPR2_BIT_MAPPING_CH1_OFFSET)

#define IOMUXC_GPR2_DATA_WIDTH_18 0
#define IOMUXC_GPR2_DATA_WIDTH_24 1

#define IOMUXC_GPR2_DATA_WIDTH_CH1_OFFSET 7
#define IOMUXC_GPR2_DATA_WIDTH_CH1_MASK (1<<IOMUXC_GPR2_DATA_WIDTH_CH1_OFFSET)
#define IOMUXC_GPR2_DATA_WIDTH_CH1_18BIT (IOMUXC_GPR2_DATA_WIDTH_18<<IOMUXC_GPR2_DATA_WIDTH_CH1_OFFSET)
#define IOMUXC_GPR2_DATA_WIDTH_CH1_24BIT (IOMUXC_GPR2_DATA_WIDTH_24<<IOMUXC_GPR2_DATA_WIDTH_CH1_OFFSET)

#define IOMUXC_GPR2_BIT_MAPPING_CH0_OFFSET 6
#define IOMUXC_GPR2_BIT_MAPPING_CH0_MASK (1<<IOMUXC_GPR2_BIT_MAPPING_CH0_OFFSET)
#define IOMUXC_GPR2_BIT_MAPPING_CH0_JEIDA (IOMUXC_GPR2_BITMAP_JEIDA<<IOMUXC_GPR2_BIT_MAPPING_CH0_OFFSET)
#define IOMUXC_GPR2_BIT_MAPPING_CH0_SPWG (IOMUXC_GPR2_BITMAP_SPWG<<IOMUXC_GPR2_BIT_MAPPING_CH0_OFFSET)

#define IOMUXC_GPR2_DATA_WIDTH_CH0_OFFSET 5
#define IOMUXC_GPR2_DATA_WIDTH_CH0_MASK (1<<IOMUXC_GPR2_DATA_WIDTH_CH0_OFFSET)
#define IOMUXC_GPR2_DATA_WIDTH_CH0_18BIT (IOMUXC_GPR2_DATA_WIDTH_18<<IOMUXC_GPR2_DATA_WIDTH_CH0_OFFSET)
#define IOMUXC_GPR2_DATA_WIDTH_CH0_24BIT (IOMUXC_GPR2_DATA_WIDTH_24<<IOMUXC_GPR2_DATA_WIDTH_CH0_OFFSET)

#define IOMUXC_GPR2_SPLIT_MODE_EN_OFFSET 4
#define IOMUXC_GPR2_SPLIT_MODE_EN_MASK (1<<IOMUXC_GPR2_SPLIT_MODE_EN_OFFSET)

#define IOMUXC_GPR2_MODE_DISABLED 0
#define IOMUXC_GPR2_MODE_ENABLED_DI0 1
#define IOMUXC_GPR2_MODE_ENABLED_DI1 2

#define IOMUXC_GPR2_LVDS_CH1_MODE_OFFSET 2
#define IOMUXC_GPR2_LVDS_CH1_MODE_MASK (3<<IOMUXC_GPR2_LVDS_CH1_MODE_OFFSET)
#define IOMUXC_GPR2_LVDS_CH1_MODE_DISABLED (IOMUXC_GPR2_MODE_DISABLED<<IOMUXC_GPR2_LVDS_CH1_MODE_OFFSET)
#define IOMUXC_GPR2_LVDS_CH1_MODE_ENABLED_DI0 (IOMUXC_GPR2_MODE_ENABLED_DI0<<IOMUXC_GPR2_LVDS_CH1_MODE_OFFSET)
#define IOMUXC_GPR2_LVDS_CH1_MODE_ENABLED_DI1 (IOMUXC_GPR2_MODE_ENABLED_DI1<<IOMUXC_GPR2_LVDS_CH1_MODE_OFFSET)

#define IOMUXC_GPR2_LVDS_CH0_MODE_OFFSET 0
#define IOMUXC_GPR2_LVDS_CH0_MODE_MASK (3<<IOMUXC_GPR2_LVDS_CH0_MODE_OFFSET)
#define IOMUXC_GPR2_LVDS_CH0_MODE_DISABLED (IOMUXC_GPR2_MODE_DISABLED<<IOMUXC_GPR2_LVDS_CH0_MODE_OFFSET)
#define IOMUXC_GPR2_LVDS_CH0_MODE_ENABLED_DI0 (IOMUXC_GPR2_MODE_ENABLED_DI0<<IOMUXC_GPR2_LVDS_CH0_MODE_OFFSET)
#define IOMUXC_GPR2_LVDS_CH0_MODE_ENABLED_DI1 (IOMUXC_GPR2_MODE_ENABLED_DI1<<IOMUXC_GPR2_LVDS_CH0_MODE_OFFSET)


struct cspi_regs {
 uint32_t rxdata;
 uint32_t txdata;
 uint32_t ctrl;
 uint32_t cfg;
 uint32_t intr;
 uint32_t dma;
 uint32_t stat;
 uint32_t period;
};




#define MXC_ECSPI 
#define MXC_CSPICTRL_EN (1 << 0)
#define MXC_CSPICTRL_MODE (1 << 1)
#define MXC_CSPICTRL_XCH (1 << 2)
#define MXC_CSPICTRL_CHIPSELECT(x) (((x) & 0x3) << 12)
#define MXC_CSPICTRL_BITCOUNT(x) (((x) & 0xfff) << 20)
#define MXC_CSPICTRL_PREDIV(x) (((x) & 0xF) << 12)
#define MXC_CSPICTRL_POSTDIV(x) (((x) & 0xF) << 8)
#define MXC_CSPICTRL_SELCHAN(x) (((x) & 0x3) << 18)
#define MXC_CSPICTRL_MAXBITS 0xfff
#define MXC_CSPICTRL_TC (1 << 7)
#define MXC_CSPICTRL_RXOVF (1 << 6)
#define MXC_CSPIPERIOD_32KHZ (1 << 15)
#define MAX_SPI_BYTES 32


#define MXC_CSPICTRL_CHAN 18


#define MXC_CSPICON_POL 4
#define MXC_CSPICON_PHA 0
#define MXC_CSPICON_SSPOL 12
#define MXC_SPI_BASE_ADDRESSES ECSPI1_BASE_ADDR, ECSPI2_BASE_ADDR, ECSPI3_BASE_ADDR, ECSPI4_BASE_ADDR, ECSPI5_BASE_ADDR






struct iim_regs {
 uint32_t ctrl;
 uint32_t ctrl_set;
 uint32_t ctrl_clr;
 uint32_t ctrl_tog;
 uint32_t timing;
 uint32_t rsvd0[3];
 uint32_t data;
 uint32_t rsvd1[3];
 uint32_t read_ctrl;
 uint32_t rsvd2[3];
 uint32_t fuse_data;
 uint32_t rsvd3[3];
 uint32_t sticky;
 uint32_t rsvd4[3];
 uint32_t scs;
 uint32_t scs_set;
 uint32_t scs_clr;
 uint32_t scs_tog;
 uint32_t crc_addr;
 uint32_t rsvd5[3];
 uint32_t crc_value;
 uint32_t rsvd6[3];
 uint32_t version;
 uint32_t rsvd7[0xdb];

 struct fuse_bank {
  uint32_t fuse_regs[0x20];
 } bank[15];
};

struct fuse_bank4_regs {
 uint32_t sjc_resp_low;
 uint32_t rsvd0[3];
 uint32_t sjc_resp_high;
 uint32_t rsvd1[3];
 uint32_t mac_addr_low;
 uint32_t rsvd2[3];
 uint32_t mac_addr_high;
 uint32_t rsvd3[0x13];
};

struct aipstz_regs {
 uint32_t mprot0;
 uint32_t mprot1;
 uint32_t rsvd[0xe];
 uint32_t opacr0;
 uint32_t opacr1;
 uint32_t opacr2;
 uint32_t opacr3;
 uint32_t opacr4;
};

struct anatop_regs {
 uint32_t pll_sys;
 uint32_t pll_sys_set;
 uint32_t pll_sys_clr;
 uint32_t pll_sys_tog;
 uint32_t usb1_pll_480_ctrl;
 uint32_t usb1_pll_480_ctrl_set;
 uint32_t usb1_pll_480_ctrl_clr;
 uint32_t usb1_pll_480_ctrl_tog;
 uint32_t usb2_pll_480_ctrl;
 uint32_t usb2_pll_480_ctrl_set;
 uint32_t usb2_pll_480_ctrl_clr;
 uint32_t usb2_pll_480_ctrl_tog;
 uint32_t pll_528;
 uint32_t pll_528_set;
 uint32_t pll_528_clr;
 uint32_t pll_528_tog;
 uint32_t pll_528_ss;
 uint32_t rsvd0[3];
 uint32_t pll_528_num;
 uint32_t rsvd1[3];
 uint32_t pll_528_denom;
 uint32_t rsvd2[3];
 uint32_t pll_audio;
 uint32_t pll_audio_set;
 uint32_t pll_audio_clr;
 uint32_t pll_audio_tog;
 uint32_t pll_audio_num;
 uint32_t rsvd3[3];
 uint32_t pll_audio_denom;
 uint32_t rsvd4[3];
 uint32_t pll_video;
 uint32_t pll_video_set;
 uint32_t pll_video_clr;
 uint32_t pll_video_tog;
 uint32_t pll_video_num;
 uint32_t rsvd5[3];
 uint32_t pll_video_denom;
 uint32_t rsvd6[3];
 uint32_t pll_mlb;
 uint32_t pll_mlb_set;
 uint32_t pll_mlb_clr;
 uint32_t pll_mlb_tog;
 uint32_t pll_enet;
 uint32_t pll_enet_set;
 uint32_t pll_enet_clr;
 uint32_t pll_enet_tog;
 uint32_t pfd_480;
 uint32_t pfd_480_set;
 uint32_t pfd_480_clr;
 uint32_t pfd_480_tog;
 uint32_t pfd_528;
 uint32_t pfd_528_set;
 uint32_t pfd_528_clr;
 uint32_t pfd_528_tog;
 uint32_t reg_1p1;
 uint32_t reg_1p1_set;
 uint32_t reg_1p1_clr;
 uint32_t reg_1p1_tog;
 uint32_t reg_3p0;
 uint32_t reg_3p0_set;
 uint32_t reg_3p0_clr;
 uint32_t reg_3p0_tog;
 uint32_t reg_2p5;
 uint32_t reg_2p5_set;
 uint32_t reg_2p5_clr;
 uint32_t reg_2p5_tog;
 uint32_t reg_core;
 uint32_t reg_core_set;
 uint32_t reg_core_clr;
 uint32_t reg_core_tog;
 uint32_t ana_misc0;
 uint32_t ana_misc0_set;
 uint32_t ana_misc0_clr;
 uint32_t ana_misc0_tog;
 uint32_t ana_misc1;
 uint32_t ana_misc1_set;
 uint32_t ana_misc1_clr;
 uint32_t ana_misc1_tog;
 uint32_t ana_misc2;
 uint32_t ana_misc2_set;
 uint32_t ana_misc2_clr;
 uint32_t ana_misc2_tog;
 uint32_t tempsense0;
 uint32_t tempsense0_set;
 uint32_t tempsense0_clr;
 uint32_t tempsense0_tog;
 uint32_t tempsense1;
 uint32_t tempsense1_set;
 uint32_t tempsense1_clr;
 uint32_t tempsense1_tog;
 uint32_t usb1_vbus_detect;
 uint32_t usb1_vbus_detect_set;
 uint32_t usb1_vbus_detect_clr;
 uint32_t usb1_vbus_detect_tog;
 uint32_t usb1_chrg_detect;
 uint32_t usb1_chrg_detect_set;
 uint32_t usb1_chrg_detect_clr;
 uint32_t usb1_chrg_detect_tog;
 uint32_t usb1_vbus_det_stat;
 uint32_t usb1_vbus_det_stat_set;
 uint32_t usb1_vbus_det_stat_clr;
 uint32_t usb1_vbus_det_stat_tog;
 uint32_t usb1_chrg_det_stat;
 uint32_t usb1_chrg_det_stat_set;
 uint32_t usb1_chrg_det_stat_clr;
 uint32_t usb1_chrg_det_stat_tog;
 uint32_t usb1_loopback;
 uint32_t usb1_loopback_set;
 uint32_t usb1_loopback_clr;
 uint32_t usb1_loopback_tog;
 uint32_t usb1_misc;
 uint32_t usb1_misc_set;
 uint32_t usb1_misc_clr;
 uint32_t usb1_misc_tog;
 uint32_t usb2_vbus_detect;
 uint32_t usb2_vbus_detect_set;
 uint32_t usb2_vbus_detect_clr;
 uint32_t usb2_vbus_detect_tog;
 uint32_t usb2_chrg_detect;
 uint32_t usb2_chrg_detect_set;
 uint32_t usb2_chrg_detect_clr;
 uint32_t usb2_chrg_detect_tog;
 uint32_t usb2_vbus_det_stat;
 uint32_t usb2_vbus_det_stat_set;
 uint32_t usb2_vbus_det_stat_clr;
 uint32_t usb2_vbus_det_stat_tog;
 uint32_t usb2_chrg_det_stat;
 uint32_t usb2_chrg_det_stat_set;
 uint32_t usb2_chrg_det_stat_clr;
 uint32_t usb2_chrg_det_stat_tog;
 uint32_t usb2_loopback;
 uint32_t usb2_loopback_set;
 uint32_t usb2_loopback_clr;
 uint32_t usb2_loopback_tog;
 uint32_t usb2_misc;
 uint32_t usb2_misc_set;
 uint32_t usb2_misc_clr;
 uint32_t usb2_misc_tog;
 uint32_t digprog;
 uint32_t reserved1[7];
 uint32_t digprog_sololite;
};

#define ANATOP_PFD_480_PFD0_FRAC_SHIFT 0
#define ANATOP_PFD_480_PFD0_FRAC_MASK (0x3f<<ANATOP_PFD_480_PFD0_FRAC_SHIFT)
#define ANATOP_PFD_480_PFD0_STABLE_SHIFT 6
#define ANATOP_PFD_480_PFD0_STABLE_MASK (1<<ANATOP_PFD_480_PFD0_STABLE_SHIFT)
#define ANATOP_PFD_480_PFD0_CLKGATE_SHIFT 7
#define ANATOP_PFD_480_PFD0_CLKGATE_MASK (1<<ANATOP_PFD_480_PFD0_CLKGATE_SHIFT)
#define ANATOP_PFD_480_PFD1_FRAC_SHIFT 8
#define ANATOP_PFD_480_PFD1_FRAC_MASK (0x3f<<ANATOP_PFD_480_PFD1_FRAC_SHIFT)
#define ANATOP_PFD_480_PFD1_STABLE_SHIFT 14
#define ANATOP_PFD_480_PFD1_STABLE_MASK (1<<ANATOP_PFD_480_PFD1_STABLE_SHIFT)
#define ANATOP_PFD_480_PFD1_CLKGATE_SHIFT 15
#define ANATOP_PFD_480_PFD1_CLKGATE_MASK (0x3f<<ANATOP_PFD_480_PFD1_CLKGATE_SHIFT)
#define ANATOP_PFD_480_PFD2_FRAC_SHIFT 16
#define ANATOP_PFD_480_PFD2_FRAC_MASK (1<<ANATOP_PFD_480_PFD2_FRAC_SHIFT)
#define ANATOP_PFD_480_PFD2_STABLE_SHIFT 22
#define ANATOP_PFD_480_PFD2_STABLE_MASK (1<<ANATOP_PFD_480_PFD2_STABLE_SHIFT)
#define ANATOP_PFD_480_PFD2_CLKGATE_SHIFT 23
#define ANATOP_PFD_480_PFD2_CLKGATE_MASK (0x3f<<ANATOP_PFD_480_PFD2_CLKGATE_SHIFT)
#define ANATOP_PFD_480_PFD3_FRAC_SHIFT 24
#define ANATOP_PFD_480_PFD3_FRAC_MASK (1<<ANATOP_PFD_480_PFD3_FRAC_SHIFT)
#define ANATOP_PFD_480_PFD3_STABLE_SHIFT 30
#define ANATOP_PFD_480_PFD3_STABLE_MASK (1<<ANATOP_PFD_480_PFD3_STABLE_SHIFT)
#define ANATOP_PFD_480_PFD3_CLKGATE_SHIFT 31

struct iomuxc_base_regs {
 uint32_t gpr[14];
 uint32_t obsrv[5];
 uint32_t swmux_ctl[197];
 uint32_t swpad_ctl[250];
 uint32_t swgrp[26];
 uint32_t daisy[104];
};

#define BP_OCOTP_CTRL_WR_UNLOCK 16
#define BM_OCOTP_CTRL_WR_UNLOCK 0xFFFF0000
#define BV_OCOTP_CTRL_WR_UNLOCK__KEY 0x3E77
#define BM_OCOTP_CTRL_RELOAD_SHADOWS 0x00000400
#define BM_OCOTP_CTRL_ERROR 0x00000200
#define BM_OCOTP_CTRL_BUSY 0x00000100
#define BP_OCOTP_CTRL_ADDR 0
#define BM_OCOTP_CTRL_ADDR 0x0000007F

#define BP_OCOTP_TIMING_STROBE_READ 16
#define BM_OCOTP_TIMING_STROBE_READ 0x003F0000
#define BP_OCOTP_TIMING_RELAX 12
#define BM_OCOTP_TIMING_RELAX 0x0000F000
#define BP_OCOTP_TIMING_STROBE_PROG 0
#define BM_OCOTP_TIMING_STROBE_PROG 0x00000FFF

#define BM_OCOTP_READ_CTRL_READ_FUSE 0x00000001
# 35 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h" 1
# 30 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
#define __ASM_ARCH_MX6_GPIO_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
#define __PLATSUPPORT_IO_H__ 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stddef.h" 1



#define _STDDEF_H 

#undef NULL



#define NULL ((void*)0)


#define __NEED_ptrdiff_t 
#define __NEED_size_t 
#define __NEED_wchar_t 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1



typedef unsigned size_t;
#define __DEFINED_size_t 
# 14 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef int ptrdiff_t;
#define __DEFINED_ptrdiff_t 
# 27 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef unsigned wchar_t;
#define __DEFINED_wchar_t 
# 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stddef.h" 2

#define offsetof(type,member) ((size_t)( (char *)&(((type *)0)->member) - (char *)0 ))
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);






#define UNUSED_NDEBUG(x) ((void)(x))
# 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h"
#define __UTILS_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h"
#define _UTILS_ARITH_H 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);
# 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/attribute.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/attribute.h"
#define _UTILS_ATTRIBUTE_H 


#define ALIGN(n) __attribute__((__aligned__(n)))
#define ALLOC_SIZE(args...) __attribute__((alloc_size(args)))
#define ASSUME_ALIGNED(args...) __attribute__((assume_aligned(args)))
#define NO_INLINE __attribute__((noinline))
#define ALWAYS_INLINE __attribute__((always_inline))
#define CLEANUP(fn) __attribute__((cleanup(fn)))
#define DEPRECATED(msg) __attribute__((deprecated(msg)))
#define ERROR(msg) __attribute__((error(msg)))
#define MALLOC __attribute__((malloc))
#define NONNULL(args...) __attribute__((__nonnull__(args)))
#define NONNULL_ALL __attribute__((__nonnull__))
#define NORETURN __attribute__((__noreturn__))
#define PACKED __attribute__((__packed__))
#define SENTINEL(param) __attribute__((sentinel(param)))
#define SENTINEL_LAST __attribute__((sentinel))
#define UNUSED __attribute__((__unused__))
#define USED __attribute__((__used__))
#define VISIBLE __attribute__((__externally_visible__))
#define WARNING(msg) __attribute__((warning(msg)))
#define WARN_UNUSED_RESULT __attribute__((warn_unused_result))
# 45 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/attribute.h"
#define ALLOC_ALIGN(arg) __attribute__((alloc_align(arg)))






#define RETURNS_NONNULL __attribute__((returns_nonnull))







#define PURE __attribute__((__pure__))
#define CONST __attribute__((__const__))
# 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/builtin.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/builtin.h"
#define _UTILS_BUILTIN_H 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);
# 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/builtin.h" 2

#define CTZ(x) __builtin_ctz(x)
#define CLZ(x) __builtin_clz(x)
#define OFFSETOF(type,member) __builtin_offsetof(type, member)
#define TYPES_COMPATIBLE(t1,t2) __builtin_types_compatible_p(t1, t2)
#define CHOOSE_EXPR(cond,x,y) __builtin_choose_expr(cond, x, y)
#define IS_CONSTANT(expr) __builtin_constant_p(expr)
#define POPCOUNT(x) __builtin_popcount(x)
# 35 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/builtin.h"
void __builtin_unreachable(void);

#define UNREACHABLE() do { assert(!"unreachable"); __builtin_unreachable(); } while (0)






#define likely(x) __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)
# 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/verification.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/verification.h"
#define _UTILS_VERIFICATION_H 



# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);
# 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/verification.h" 2





#define GUARD(x) do { assert(x); if (!(x)) { for (;;); } } while (0)
# 21 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h" 2

#define BIT(n) (1ul<<(n))

#define MASK_UNSAFE(x) ((BIT(x) - 1ul))

#define MASK(n) ({(void)assert((n) <= 31); MASK_UNSAFE(n); })

#define IS_ALIGNED(n,b) (!((n) & MASK(b)))

#define LOG_BASE_2(n) ({ (sizeof(typeof (n)) * 8) - CLZ((n)) - 1;})


#define IS_POWER_OF_2_OR_ZERO(x) (0 == ((x) & ((x) - 1)))
#define IS_POWER_OF_2(x) (((x) != 0) && IS_POWER_OF_2_OR_ZERO(x))
#define ALIGN_UP(x,n) (((x) + (n) - 1) & ~((n) - 1))
#define ALIGN_DOWN(x,n) ((x) & ~((n) - 1))

#define ROUND_DOWN_UNSAFE(n,b) ((n) - ((n) % (b)))

#define ROUND_DOWN(n,b) ({ typeof (n) _n = (n); typeof (b) _b = (b); _n - (_n % _b); })





#define ROUND_UP_UNSAFE(n,b) ((n) + ((n) % (b) == 0 ? 0 : ((b) - ((n) % (b)))))

#define ROUND_UP(n,b) ({ typeof (n) _n = (n); typeof (b) _b = (b); (_n + (_n % b == 0 ? 0 : (_b - (_n % _b)))); })





#define MIN(a,b) ({ typeof (a) _a = (a); typeof (b) _b = (b); _a < _b ? _a : _b; })





#define MIN_UNSAFE(x,y) ((x) < (y) ? (x) : (y))

#define MAX(a,b) ({ typeof (a) _a = (a); typeof (b) _b = (b); _a > _b ? _a : _b; })





#define MAX_UNSAFE(x,y) ((x) > (y) ? (x) : (y))

#define INRANGE(a,x,b) MIN(MAX(x, a), b)
#define ISINRANGE(a,x,b) ({ typeof (x) _x = (x); _x == INRANGE(a, _x, b); })



#define ARRAY_SIZE(x) (sizeof(x)/sizeof((x)[0]))


#define CLAMP(min,value,max) ({ typeof (max) _max = (max); typeof (min) _min = (min); typeof (value) _value = (value); if (_value > _max) { _value = _max; } else if (_value < _min) { _value = _min; } _value; })
# 90 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h"
#define CLAMP_ADD(operand1,operand2,limit) ({ typeof (operand1) _op1 = (operand1); typeof (operand2) _op2 = (operand2); typeof (limit) _limit = (limit); _limit - _op2 < _op1 ? _limit : _op1 + _op2; })
# 99 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/arith.h"
#define CLAMP_SUB(operand1,operand2,limit) ({ typeof (operand1) _op1 = (operand1); typeof (operand2) _op2 = (operand2); typeof (limit) _limit = (limit); _limit + _op2 > _op1 ? _limit : _op1 - _op2; })
# 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/assume.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/assume.h"
#define _UTILS_ASSUME_H 







#define ASSUME(x) do { if (!(x)) { __builtin_unreachable(); } } while (0)
# 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/compile_time.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/compile_time.h"
#define _UTILS_COMPILE_TIME_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/include/generated/autoconf.h" 1





#define AUTOCONF_INCLUDED 
#define CONFIG_IRQ_REPORTING 1
#define CONFIG_APP_PROXY_SENSOR 1
#define CONFIG_APP_PROXY 1
#define CONFIG_ARM_CORTEX_A9 1
#define CONFIG_LIB_NFS 1
#define CONFIG_LIB_ELF 1
#define CONFIG_USER_DEBUG_BUILD 1
#define CONFIG_LIB_SEL4_CSPACE 1
#define CONFIG_TIMER_TICK_MS 20
#define CONFIG_ARM_ERRATA_764369 1
#define CONFIG_KERNEL_CFLAGS ""
#define CONFIG_AEP_BINDING 1
#define CONFIG_SOS_STARTUP_APP "lping"
#define CONFIG_SOS_GATEWAY "192.168.168.2"
#define CONFIG_HAVE_LIBC 1
#define CONFIG_WORD_SIZE 32
#define CONFIG_APP_TEMP_CONTROL 1
#define CONFIG_FASTPATH 1
#define CONFIG_LIB_SERIAL 1
#define CONFIG_DOMAIN_SCHEDULE ""
#define CONFIG_OPTIMISATION_O3 1
#define CONFIG_LIB_SEL4 1
#define CONFIG_APP_PROXY_MAX_NUM_CLIENTS 16
#define CONFIG_LIB_PLATSUPPORT 1
#define CONFIG_LIB_SEL4_SYNC 1
#define CONFIG_SOS_NETMASK "225.225.225.0"
#define CONFIG_LIB_CLOCK 1
#define CONFIG_LIB_ELFLOADER 1
#define CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS 800
#define CONFIG_CROSS_COMPILER_PREFIX "arm-linux-gnueabi-"
#define CONFIG_APP_WEB 1
#define CONFIG_LIB_MUSL_C 1
#define CONFIG_MAX_NUM_WORK_UNITS_PER_PREEMPTION 100
#define CONFIG_ARCH_ARM_V7A 1
#define CONFIG_USER_CFLAGS ""
#define CONFIG_LIB_ETHIF 1
#define CONFIG_APP_PROXY_FAN 1
#define CONFIG_DEBUG_BUILD 1
#define CONFIG_LIB_UTILS 1
#define CONFIG_BENCHMARK 1
#define CONFIG_PLAT_IMX6 1
#define CONFIG_APP_SOS 1
#define CONFIG_KERNEL_STABLE 1
#define CONFIG_USER_EXTRA_CFLAGS "-D_POSIX_SOURCE"
#define CONFIG_LIB_MUSL_C_USE_PREBUILT 1
#define CONFIG_SOS_IP "192.168.168.1"
#define CONFIG_ARCH_ARM 1
#define CONFIG_LIB_ETHDRIVER_NUM_PREALLOCATED_BUFFERS 512
#define CONFIG_NUM_DOMAINS 1
#define CONFIG_LIB_ETHDRIVER_RX_DESC_COUNT 32
#define CONFIG_USER_DEBUG_INFO 1
#define CONFIG_LIB_SOS 1
#define CONFIG_LIB_ETHDRIVER_PREALLOCATED_BUF_SIZE 2048
#define CONFIG_SOS_NFS_DIR ""
#define CONFIG_USER_OPTIMISATION_O2 1
#define CONFIG_LIB_CPIO 1
#define CONFIG_RETYPE_FAN_OUT_LIMIT 256
#define CONFIG_ROOT_CNODE_SIZE_BITS 12
#define CONFIG_NUM_PRIORITIES 256
#define CONFIG_LIB_LWIP 1
#define CONFIG_KERNEL_COMPILER ""
#define CONFIG_TIME_SLICE 5
#define CONFIG_KERNEL_EXTRA_CPPFLAGS ""
#define CONFIG_LIB_ETHDRIVER_TX_DESC_COUNT 32
#define CONFIG_BUILDSYS_USE_CCACHE 1
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/compile_time.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/stringify.h" 1
# 14 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/stringify.h"
#define _UTILS_STRINGIFY_H 




#define _STRINGIFY(s) #s
#define STRINGIFY(s) _STRINGIFY(s)

#define _JOIN(x,y) x ## y
#define JOIN(x,y) _JOIN(x, y)
# 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/compile_time.h" 2
# 27 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/compile_time.h"
#define compile_time_assert(name,expr) _Static_assert((expr), #name)
# 21 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/debug.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/debug.h"
#define _UTIL_DEBUG_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdbool.h" 1



#define _STDBOOL_H 



#define true 1
#define false 0
#define bool _Bool

#define __bool_true_false_are_defined 1
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/debug.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdio.h" 1



#define _STDIO_H 





#define __NEED_FILE 
#define __NEED_va_list 
#define __NEED_size_t 




#define __NEED_ssize_t 
#define __NEED_off_t 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1
# 9 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
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
# 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/debug.h" 2

#define PRINT_ONCE(...) ({ static bool __printed = 0; if(!__printed) { printf(__VA_ARGS__); __printed=1; } })
# 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/formats.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/formats.h"
#define UTILS_FORMATS_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/include/generated/autoconf.h" 1





#define AUTOCONF_INCLUDED 
#define CONFIG_IRQ_REPORTING 1
#define CONFIG_APP_PROXY_SENSOR 1
#define CONFIG_APP_PROXY 1
#define CONFIG_ARM_CORTEX_A9 1
#define CONFIG_LIB_NFS 1
#define CONFIG_LIB_ELF 1
#define CONFIG_USER_DEBUG_BUILD 1
#define CONFIG_LIB_SEL4_CSPACE 1
#define CONFIG_TIMER_TICK_MS 20
#define CONFIG_ARM_ERRATA_764369 1
#define CONFIG_KERNEL_CFLAGS ""
#define CONFIG_AEP_BINDING 1
#define CONFIG_SOS_STARTUP_APP "lping"
#define CONFIG_SOS_GATEWAY "192.168.168.2"
#define CONFIG_HAVE_LIBC 1
#define CONFIG_WORD_SIZE 32
#define CONFIG_APP_TEMP_CONTROL 1
#define CONFIG_FASTPATH 1
#define CONFIG_LIB_SERIAL 1
#define CONFIG_DOMAIN_SCHEDULE ""
#define CONFIG_OPTIMISATION_O3 1
#define CONFIG_LIB_SEL4 1
#define CONFIG_APP_PROXY_MAX_NUM_CLIENTS 16
#define CONFIG_LIB_PLATSUPPORT 1
#define CONFIG_LIB_SEL4_SYNC 1
#define CONFIG_SOS_NETMASK "225.225.225.0"
#define CONFIG_LIB_CLOCK 1
#define CONFIG_LIB_ELFLOADER 1
#define CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS 800
#define CONFIG_CROSS_COMPILER_PREFIX "arm-linux-gnueabi-"
#define CONFIG_APP_WEB 1
#define CONFIG_LIB_MUSL_C 1
#define CONFIG_MAX_NUM_WORK_UNITS_PER_PREEMPTION 100
#define CONFIG_ARCH_ARM_V7A 1
#define CONFIG_USER_CFLAGS ""
#define CONFIG_LIB_ETHIF 1
#define CONFIG_APP_PROXY_FAN 1
#define CONFIG_DEBUG_BUILD 1
#define CONFIG_LIB_UTILS 1
#define CONFIG_BENCHMARK 1
#define CONFIG_PLAT_IMX6 1
#define CONFIG_APP_SOS 1
#define CONFIG_KERNEL_STABLE 1
#define CONFIG_USER_EXTRA_CFLAGS "-D_POSIX_SOURCE"
#define CONFIG_LIB_MUSL_C_USE_PREBUILT 1
#define CONFIG_SOS_IP "192.168.168.1"
#define CONFIG_ARCH_ARM 1
#define CONFIG_LIB_ETHDRIVER_NUM_PREALLOCATED_BUFFERS 512
#define CONFIG_NUM_DOMAINS 1
#define CONFIG_LIB_ETHDRIVER_RX_DESC_COUNT 32
#define CONFIG_USER_DEBUG_INFO 1
#define CONFIG_LIB_SOS 1
#define CONFIG_LIB_ETHDRIVER_PREALLOCATED_BUF_SIZE 2048
#define CONFIG_SOS_NFS_DIR ""
#define CONFIG_USER_OPTIMISATION_O2 1
#define CONFIG_LIB_CPIO 1
#define CONFIG_RETYPE_FAN_OUT_LIMIT 256
#define CONFIG_ROOT_CNODE_SIZE_BITS 12
#define CONFIG_NUM_PRIORITIES 256
#define CONFIG_LIB_LWIP 1
#define CONFIG_KERNEL_COMPILER ""
#define CONFIG_TIME_SLICE 5
#define CONFIG_KERNEL_EXTRA_CPPFLAGS ""
#define CONFIG_LIB_ETHDRIVER_TX_DESC_COUNT 32
#define CONFIG_BUILDSYS_USE_CCACHE 1
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/formats.h" 2

#define COLOR_ERROR "\033[1;31m"
#define COLOR_NORMAL "\033[0m"





#define DFMT "%d"
#define XFMT "%x"
# 23 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/kconfig.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/kconfig.h"
#define _UTILS_KCONFIG_H_ 
# 29 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/kconfig.h"
#define __ARG_PLACEHOLDER_1 0,
#define config_enabled(cfg) _config_enabled(cfg)
#define _config_enabled(value) __config_enabled(__ARG_PLACEHOLDER_ ##value)
#define __config_enabled(arg1_or_junk) ___config_enabled(arg1_or_junk 1, 0)
#define ___config_enabled(__ignored,val,...) val






#define IS_ENABLED(option) (config_enabled(option) || config_enabled(option ##_MODULE))







#define IS_BUILTIN(option) config_enabled(option)





#define IS_MODULE(option) config_enabled(option ##_MODULE)
# 24 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/list.h" 1
# 14 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/list.h"
#define _UTILS_LIST_H 




typedef struct {
    struct list_node *head;
} list_t;


int list_init(list_t *l);





int list_prepend(list_t *l, void *data);


int list_append(list_t *l, void *data);


_Bool list_is_empty(list_t *l);




_Bool list_exists(list_t *l, void *data, int(*cmp)(void*, void*));


int list_length(list_t *l);




int list_index(list_t *l, void *data, int(*cmp)(void*, void*));





int list_foreach(list_t *l, int(*action)(void*));




int list_remove(list_t *l, void *data, int(*cmp)(void*, void*));


int list_remove_all(list_t *l);




int list_destroy(list_t *l);







struct list_node {
    void *data;
    struct list_node *next;
};

int list_prepend_node(list_t *l, struct list_node *node);
int list_append_node(list_t *l, struct list_node *node);
int list_remove_node(list_t *l, void *data, int(*cmp)(void*, void*));
int list_remove_all_nodes(list_t *l);
# 25 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/page.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/page.h"
#define _UTILS_PAGE_H 





#define PAGE_BITS_4K 12
#define PAGE_SIZE_4K (BIT(PAGE_BITS_4K))
#define PAGE_MASK_4K (PAGE_SIZE_4K - 1)
#define PAGE_ALIGN_4K(addr) ((addr) & ~PAGE_MASK_4K)
#define IS_ALIGNED_4K(addr) IS_ALIGNED(addr, PAGE_BITS_4K)
#define BYTES_TO_4K_PAGES(b) (((b) / PAGE_SIZE_4K) + ((((b) % PAGE_SIZE_4K) > 0) ? 1 : 0))

#define PAGE_ALIGN(addr,size) ((addr) & ~(size-1))

#define SAME_PAGE_4K(a,b) ((((uintptr_t)(a)) & ~PAGE_MASK_4K) == (((uintptr_t)(b)) & ~PAGE_MASK_4K))
# 26 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/stack.h" 1
# 11 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/stack.h"
#define __UTILS_STACK_H 
# 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/stack.h"
void *utils_run_on_stack(void *stack_top, void *(*func)(void *arg), void *arg);
# 28 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/time.h" 1
# 11 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/time.h"
#define _UTILS_TIME_H 


#define SEC_IN_MINUTE 60llu
#define NS_IN_MINUTE (SEC_IN_MINUTE*NS_IN_S)


#define MS_IN_S 1000llu


#define US_IN_MS 1000llu
#define US_IN_S 1000000llu


#define NS_IN_US 1000llu
#define NS_IN_MS 1000000llu
#define NS_IN_S 1000000000llu


#define PS_IN_NS 1000llu
#define PS_IN_US 1000000llu
#define PS_IN_MS 1000000000llu
#define PS_IN_S 1000000000000llu


#define FS_IN_PS 1000llu
#define FS_IN_NS 1000000llu
#define FS_IN_US 1000000000llu
#define FS_IN_MS 1000000000000llu
#define FS_IN_S 1000000000000000llu
# 29 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/math.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/math.h"
#define _UTILS_MATH_H 
# 26 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/math.h"
static inline uint64_t muldivu64(uint64_t a, uint64_t b, uint64_t c)
{

    uint64_t quotient = 0;
    uint64_t remainder = 0;



    uint64_t cur_quotient = b / c;
    uint64_t cur_remainder = b % c;


    while(a) {


        if (a & 1) {

            quotient += cur_quotient;
            remainder += cur_remainder;
            if (remainder >= c) {
                quotient++;
                remainder -= c;
            }
        }


        a >>= 1;
        cur_quotient <<= 1;
        cur_remainder <<= 1;


        if (cur_remainder >= c) {
            cur_quotient++;
            cur_remainder -= c;
        }
    }
    return quotient;
}
# 30 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/util.h" 2

#define TRUE 1
#define FALSE 0





#define LOG_ERROR(format,...) printf("ERROR:%s:%d: "format"\n", __func__, __LINE__, ##__VA_ARGS__)
#define LOG_INFO(format,...) printf("INFO :%s:%d: "format"\n", __func__, __LINE__, ##__VA_ARGS__)
# 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sys/types.h" 1



#define _SYS_TYPES_H 




#define __NEED_ino_t 
#define __NEED_dev_t 
#define __NEED_uid_t 
#define __NEED_gid_t 
#define __NEED_mode_t 
#define __NEED_nlink_t 
#define __NEED_off_t 
#define __NEED_pid_t 
#define __NEED_size_t 
#define __NEED_ssize_t 
#define __NEED_time_t 
#define __NEED_timer_t 
#define __NEED_clockid_t 

#define __NEED_int8_t 
#define __NEED_int16_t 
#define __NEED_int32_t 
#define __NEED_int64_t 

#define __NEED___uint16_t 
#define __NEED___uint32_t 
#define __NEED___uint64_t 

#define __NEED_blkcnt_t 
#define __NEED_fsblkcnt_t 
#define __NEED_fsfilcnt_t 

#define __NEED_id_t 
#define __NEED_key_t 
#define __NEED_clock_t 
#define __NEED_suseconds_t 
#define __NEED_blksize_t 

#define __NEED_pthread_t 
#define __NEED_pthread_attr_t 
#define __NEED_pthread_mutexattr_t 
#define __NEED_pthread_condattr_t 
#define __NEED_pthread_rwlockattr_t 
#define __NEED_pthread_barrierattr_t 
#define __NEED_pthread_mutex_t 
#define __NEED_pthread_cond_t 
#define __NEED_pthread_rwlock_t 
#define __NEED_pthread_barrier_t 
#define __NEED_pthread_spinlock_t 
#define __NEED_pthread_key_t 
#define __NEED_pthread_once_t 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1
# 91 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef unsigned short __uint16_t;
#define __DEFINED___uint16_t 



typedef unsigned int __uint32_t;
#define __DEFINED___uint32_t 



typedef unsigned long long __uint64_t;
#define __DEFINED___uint64_t 
# 171 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef long time_t;
#define __DEFINED_time_t 



typedef int suseconds_t;
#define __DEFINED_suseconds_t 
# 192 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef int pid_t;
#define __DEFINED_pid_t 



typedef int id_t;
#define __DEFINED_id_t 



typedef int uid_t;
#define __DEFINED_uid_t 



typedef int gid_t;
#define __DEFINED_gid_t 



typedef int key_t;
#define __DEFINED_key_t 




typedef struct __pthread * pthread_t;
#define __DEFINED_pthread_t 



typedef int pthread_once_t;
#define __DEFINED_pthread_once_t 



typedef int pthread_key_t;
#define __DEFINED_pthread_key_t 



typedef int pthread_spinlock_t;
#define __DEFINED_pthread_spinlock_t 




typedef struct { union { int __i[9]; size_t __s[9]; } __u; } pthread_attr_t;
#define __DEFINED_pthread_attr_t 



typedef unsigned pthread_mutexattr_t;
#define __DEFINED_pthread_mutexattr_t 



typedef unsigned pthread_condattr_t;
#define __DEFINED_pthread_condattr_t 



typedef unsigned pthread_barrierattr_t;
#define __DEFINED_pthread_barrierattr_t 



typedef struct { unsigned __attr[2]; } pthread_rwlockattr_t;
#define __DEFINED_pthread_rwlockattr_t 




typedef struct { union { int __i[6]; void *__p[6]; } __u; } pthread_mutex_t;
#define __DEFINED_pthread_mutex_t 



typedef struct { union { int __i[12]; void *__p[12]; } __u; } pthread_cond_t;
#define __DEFINED_pthread_cond_t 



typedef struct { union { int __i[8]; void *__p[8]; } __u; } pthread_rwlock_t;
#define __DEFINED_pthread_rwlock_t 



typedef struct { union { int __i[5]; void *__p[5]; } __u; } pthread_barrier_t;
#define __DEFINED_pthread_barrier_t 
# 292 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef unsigned int mode_t;
#define __DEFINED_mode_t 




typedef unsigned int nlink_t;
#define __DEFINED_nlink_t 



typedef unsigned long long ino_t;
#define __DEFINED_ino_t 



typedef long long dev_t;
#define __DEFINED_dev_t 



typedef long blksize_t;
#define __DEFINED_blksize_t 



typedef long long blkcnt_t;
#define __DEFINED_blkcnt_t 



typedef unsigned long long fsblkcnt_t;
#define __DEFINED_fsblkcnt_t 



typedef unsigned long long fsfilcnt_t;
#define __DEFINED_fsfilcnt_t 




typedef void * timer_t;
#define __DEFINED_timer_t 



typedef int clockid_t;
#define __DEFINED_clockid_t 



typedef unsigned long clock_t;
#define __DEFINED_clock_t 
# 57 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sys/types.h" 2

typedef unsigned char u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
# 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 2


typedef struct ps_io_ops ps_io_ops_t;


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
#define _PLATSUPPORT_CLOCK_H_ 

#define KHZ (1000)
#define MHZ (1000 * KHZ)
#define GHZ (1000 * MHZ)


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);
# 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h" 2

struct clock;
struct clock_sys;

typedef struct clock clk_t;
typedef struct clock_sys clock_sys_t;

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/plat/clock.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/plat/clock.h"
#define _PLATSUPPORT_PLAT_CLOCK_H_ 

enum clk_id {
    CLK_MASTER,
    CLK_PLL2,
    CLK_MMDC_CH0,
    CLK_AHB,
    CLK_IPG,
    CLK_ARM,
    CLK_ENET,
    CLK_USB1,
    CLK_USB2,
    CLK_CLKO1,
    CLK_CLKO2,

    NCLOCKS,

    CLK_CUSTOM,

    CLK_PLL1 = CLK_ARM,

    CLK_PLL3 = CLK_USB1,


    CLK_PLL6 = CLK_ENET,
    CLK_PLL7 = CLK_USB2,

    CLK_PERCLK = CLK_IPG,
};

#define CLK_GATE(reg,index) (((reg) << 4) + (index))
enum clock_gate {



    ocotp_ctrl = (((2) << 4) + (6)),
    i2c3_serial = (((2) << 4) + (5)),
    i2c2_serial = (((2) << 4) + (4)),
    i2c1_serial = (((2) << 4) + (3)),





    usboh3 = (((6) << 4) + (0)),
    usdhc1 = (((6) << 4) + (1)),
    usdhc2 = (((6) << 4) + (2)),
    usdhc3 = (((6) << 4) + (3)),
    usdhc4 = (((6) << 4) + (4)),
    eim_slow = (((6) << 4) + (5)),
    vdoaxiclk = (((6) << 4) + (6)),
    vpu = (((6) << 4) + (7)),
    NCLKGATES
};
# 28 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h" 2

typedef uint64_t freq_t;

enum clock_gate_mode {
    CLKGATE_ON,
    CLKGATE_IDLE,
    CLKGATE_SLEEP,
    CLKGATE_OFF
};

struct clock_sys {
    clk_t* (*get_clock)(clock_sys_t* clock_sys, enum clk_id id);
    int (*gate_enable)(clock_sys_t* clock_sys, enum clock_gate gate, enum clock_gate_mode mode);
    void* priv;
};

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 1
# 45 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h" 2

struct clock {
    enum clk_id id;

    const char* name;

    void *priv;

    freq_t req_freq;


    clk_t* parent;

    clk_t* sibling;

    clk_t* child;


    clock_sys_t* clk_sys;

    clk_t* (*init)(clk_t* clk);
    freq_t (*get_freq)(clk_t*);
    freq_t (*set_freq)(clk_t*, freq_t hz);
    void (*recal)(clk_t*);
};







static inline int clock_sys_valid(const clock_sys_t* clock_sys)
{
    return clock_sys && clock_sys->priv;
}
# 91 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
int clock_sys_init(ps_io_ops_t* io_ops, clock_sys_t* clock_sys);
# 103 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
int clock_sys_init_default(clock_sys_t* clock_sys);
# 113 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
int clock_sys_set_default_freq(enum clk_id id, freq_t hz);
# 122 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
static inline clk_t* clk_get_clock(clock_sys_t* clock_sys, enum clk_id id)
{
    clk_t * clk;
    ((clock_sys) ? ((void)0) : (__assert_fail("clock_sys", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 125, __func__)));
    ((clock_sys->get_clock) ? ((void)0) : (__assert_fail("clock_sys->get_clock", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 126, __func__)));
    clk = clock_sys->get_clock(clock_sys, id);
    return clk;
};





void clk_print_clock_tree(clock_sys_t* clock_sys);
# 145 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
static inline int clk_gate_enable(clock_sys_t* clock_sys, enum clock_gate gate,
                                  enum clock_gate_mode mode)
{
    ((clock_sys) ? ((void)0) : (__assert_fail("clock_sys", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 148, __func__)));
    ((clock_sys->gate_enable) ? ((void)0) : (__assert_fail("clock_sys->gate_enable", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 149, __func__)));
    return clock_sys->gate_enable(clock_sys, gate, mode);
}
# 160 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
static inline freq_t clk_set_freq(clk_t* clk, freq_t hz)
{
    ((clk) ? ((void)0) : (__assert_fail("clk", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 162, __func__)));
    ((clk->set_freq) ? ((void)0) : (__assert_fail("clk->set_freq", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 163, __func__)));
    return clk->set_freq(clk, hz);
}
# 174 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
static inline freq_t clk_get_freq(clk_t* clk)
{
    ((clk) ? ((void)0) : (__assert_fail("clk", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 176, __func__)));
    ((clk->get_freq) ? ((void)0) : (__assert_fail("clk->get_freq", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h", 177, __func__)));
    return clk->get_freq(clk);
}
# 189 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/clock.h"
void clk_register_child(clk_t* parent, clk_t* child);







clk_t clk_generate_fixed_clk(enum clk_id id, freq_t frequency);
# 25 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/mux.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/mux.h"
#define __PLATSUPPORT_MUX_H__ 

typedef struct mux_sys mux_sys_t;

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/plat/mux.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/plat/mux.h"
#define __PLATSUPPORT_PLAT_MUX_H__ 

enum mux_feature {
    MUX_I2C1,
    MUX_I2C2,
    MUX_I2C3,
    MUX_GPIO0_CLKO1,
    NMUX_FEATURES
};
# 29 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/plat/mux.h"
int imx6_mux_init(void* iomuxc, mux_sys_t* mux);
# 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/mux.h" 2

struct mux_sys {
    int (*feature_enable)(mux_sys_t* mux, enum mux_feature);
    void *priv;
};



static inline int mux_sys_valid(const mux_sys_t* mux_sys)
{
    return mux_sys && mux_sys->priv;
}
# 37 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/mux.h"
int mux_sys_init(ps_io_ops_t* io_ops, mux_sys_t* mux);







static inline int mux_feature_enable(mux_sys_t* mux, enum mux_feature mux_feature)
{
    if (mux->feature_enable) {
        return mux->feature_enable(mux, mux_feature);
    } else {
        return -1;
    }
}
# 26 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h" 2
# 34 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef enum ps_mem_flags {
    PS_MEM_NORMAL,
    PS_MEM_HR,
    PS_MEM_HW
} ps_mem_flags_t;
# 50 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef void *(*ps_io_map_fn_t)(void* cookie, uintptr_t paddr, size_t size, int cached, ps_mem_flags_t flags);
# 59 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef void (*ps_io_unmap_fn_t)(void *cookie, void *vaddr, size_t size);

typedef struct ps_io_mapper {
    void *cookie;
    ps_io_map_fn_t io_map_fn;
    ps_io_unmap_fn_t io_unmap_fn;
} ps_io_mapper_t;

static inline void *
ps_io_map(ps_io_mapper_t *io_mapper, uintptr_t paddr, size_t size, int cached, ps_mem_flags_t flags)
{
    ((io_mapper) ? ((void)0) : (__assert_fail("io_mapper", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 70, __func__)));
    ((io_mapper->io_map_fn) ? ((void)0) : (__assert_fail("io_mapper->io_map_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 71, __func__)));
    return io_mapper->io_map_fn(io_mapper->cookie, paddr, size, cached, flags);
}

static inline void
ps_io_unmap(ps_io_mapper_t *io_mapper, void *vaddr, size_t size)
{
    ((io_mapper) ? ((void)0) : (__assert_fail("io_mapper", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 78, __func__)));
    ((io_mapper->io_unmap_fn) ? ((void)0) : (__assert_fail("io_mapper->io_unmap_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 79, __func__)));
    io_mapper->io_unmap_fn(io_mapper->cookie, vaddr, size);
}
# 93 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef int (*ps_io_port_in_fn_t) (void* cookie, uint32_t port, int io_size, uint32_t *result);
# 105 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef int (*ps_io_port_out_fn_t)(void* cookie, uint32_t port, int io_size, uint32_t val);

typedef struct ps_io_port_ops {
    void *cookie;
    ps_io_port_in_fn_t io_port_in_fn;
    ps_io_port_out_fn_t io_port_out_fn;
} ps_io_port_ops_t;

static inline int
ps_io_port_in(ps_io_port_ops_t *port_ops, uint32_t port, int io_size, uint32_t *result)
{
    ((port_ops) ? ((void)0) : (__assert_fail("port_ops", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 116, __func__)));
    ((port_ops->io_port_in_fn) ? ((void)0) : (__assert_fail("port_ops->io_port_in_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 117, __func__)));
    return port_ops->io_port_in_fn(port_ops->cookie, port, io_size, result);
}

static inline int
ps_io_port_out(ps_io_port_ops_t *port_ops, uint32_t port, int io_size, uint32_t val)
{
    ((port_ops) ? ((void)0) : (__assert_fail("port_ops", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 124, __func__)));
    ((port_ops->io_port_out_fn) ? ((void)0) : (__assert_fail("port_ops->io_port_out_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 125, __func__)));
    return port_ops->io_port_out_fn(port_ops->cookie, port, io_size, val);
}

typedef enum dma_cache_op {
    DMA_CACHE_OP_CLEAN,
    DMA_CACHE_OP_INVALIDATE,
    DMA_CACHE_OP_CLEAN_INVALIDATE
} dma_cache_op_t;
# 148 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef void* (*ps_dma_alloc_fn_t)(void *cookie, size_t size, int align, int cached, ps_mem_flags_t flags);
# 157 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef void (*ps_dma_free_fn_t)(void *cookie, void *addr, size_t size);
# 171 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef uintptr_t (*ps_dma_pin_fn_t)(void *cookie, void *addr, size_t size);
# 182 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef void (*ps_dma_unpin_fn_t)(void *cookie, void *addr, size_t size);
# 193 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h"
typedef void (*ps_dma_cache_op_fn_t)(void *cookie, void *addr, size_t size, dma_cache_op_t op);

typedef struct ps_dma_man {
    void *cookie;
    ps_dma_alloc_fn_t dma_alloc_fn;
    ps_dma_free_fn_t dma_free_fn;
    ps_dma_pin_fn_t dma_pin_fn;
    ps_dma_unpin_fn_t dma_unpin_fn;
    ps_dma_cache_op_fn_t dma_cache_op_fn;
} ps_dma_man_t;

static inline void *
ps_dma_alloc(ps_dma_man_t *dma_man, size_t size, int align, int cache, ps_mem_flags_t flags)
{
    ((dma_man) ? ((void)0) : (__assert_fail("dma_man", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 207, __func__)));
    ((dma_man->dma_alloc_fn) ? ((void)0) : (__assert_fail("dma_man->dma_alloc_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 208, __func__)));
    return dma_man->dma_alloc_fn(dma_man->cookie, size, align, cache, flags);
}

static inline void
ps_dma_free(ps_dma_man_t *dma_man, void *addr, size_t size)
{
    ((dma_man) ? ((void)0) : (__assert_fail("dma_man", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 215, __func__)));
    ((dma_man->dma_free_fn) ? ((void)0) : (__assert_fail("dma_man->dma_free_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 216, __func__)));
    dma_man->dma_free_fn(dma_man->cookie, addr, size);
}

static inline uintptr_t
ps_dma_pin(ps_dma_man_t *dma_man, void *addr, size_t size)
{
    ((dma_man) ? ((void)0) : (__assert_fail("dma_man", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 223, __func__)));
    ((dma_man->dma_pin_fn) ? ((void)0) : (__assert_fail("dma_man->dma_pin_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 224, __func__)));
    return dma_man->dma_pin_fn(dma_man->cookie, addr, size);
}

static inline void
ps_dma_unpin(ps_dma_man_t *dma_man, void *addr, size_t size)
{
    ((dma_man) ? ((void)0) : (__assert_fail("dma_man", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 231, __func__)));
    ((dma_man->dma_unpin_fn) ? ((void)0) : (__assert_fail("dma_man->dma_unpin_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 232, __func__)));
    dma_man->dma_unpin_fn(dma_man->cookie, addr, size);
}

static inline void
ps_dma_cache_op(ps_dma_man_t *dma_man, void *addr, size_t size, dma_cache_op_t op)
{
    ((dma_man) ? ((void)0) : (__assert_fail("dma_man", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 239, __func__)));
    ((dma_man->dma_cache_op_fn) ? ((void)0) : (__assert_fail("dma_man->dma_cache_op_fn", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/platsupport/io.h", 240, __func__)));
    dma_man->dma_cache_op_fn(dma_man->cookie, addr, size, op);
}

static inline void
ps_dma_cache_clean(ps_dma_man_t *dma_man, void *addr, size_t size)
{
    ps_dma_cache_op(dma_man, addr, size, DMA_CACHE_OP_CLEAN);
}

static inline void
ps_dma_cache_invalidate(ps_dma_man_t *dma_man, void *addr, size_t size)
{
    ps_dma_cache_op(dma_man, addr, size, DMA_CACHE_OP_INVALIDATE);
}

static inline void
ps_dma_cache_clean_invalidate(ps_dma_man_t *dma_man, void *addr, size_t size)
{
    ps_dma_cache_op(dma_man, addr, size, DMA_CACHE_OP_CLEAN_INVALIDATE);
}



struct ps_io_ops {
    ps_io_mapper_t io_mapper;
    ps_io_port_ops_t io_port_ops;
    ps_dma_man_t dma_manager;

    clock_sys_t clock_sys;
    mux_sys_t mux_sys;

};
# 33 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h" 2
# 59 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
#define __ASM_ARCH_IMX_GPIO_H 




struct gpio_regs {
 uint32_t gpio_dr;
 uint32_t gpio_dir;
 uint32_t gpio_psr;
};


#define IMX_GPIO_NR(port,index) ((((port)-1)*32)+((index)&31))
# 102 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
#define _ASM_GENERIC_GPIO_H_ 
# 129 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
int gpio_request(unsigned gpio, const char *label);







int gpio_free(unsigned gpio);







int gpio_direction_input(unsigned gpio, ps_io_ops_t *io_ops);
# 154 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
int gpio_direction_output(unsigned gpio, int value, ps_io_ops_t *io_ops);
# 163 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
int gpio_get_value(unsigned gpio);
# 173 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
int gpio_set_value(unsigned gpio, int value);
# 183 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/gpio.h"
int gpio_request(unsigned gpio, const char *label);
# 36 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h" 2



#define CONFIG_BOARD_EARLY_INIT_F 
#define CONFIG_MISC_INIT_R 
#define CONFIG_MXC_GPIO 

#define CONFIG_FEC_MXC 
#define CONFIG_MII 
#define IMX_FEC_BASE ENET_BASE_ADDR
#define CONFIG_FEC_XCV_TYPE RGMII
#define CONFIG_ETHPRIME "FEC"
#define CONFIG_FEC_MXC_PHYMASK (0xf << 4)
#define CONFIG_PHYLIB 
#define CONFIG_PHY_MICREL 
#define CONFIG_PHY_MICREL_KSZ9021 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/config.h" 1




# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h" 1
# 5 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/config.h" 2
# 55 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h" 2

#define CONFIG_MX6 
#define CONFIG_MX6Q 



#define CONFIG_BOARD_EARLY_INIT_F 
#define CONFIG_MXC_GPIO 

#define CONFIG_MXC_UART 
#define CONFIG_FEC_MXC 
#define CONFIG_MII 
#define IMX_FEC_BASE ENET_BASE_ADDR
#define CONFIG_FEC_XCV_TYPE RGMII
#define CONFIG_ETHPRIME "FEC"
#define CONFIG_FEC_MXC_PHYADDR 1

#define CONFIG_PHYLIB 
#define CONFIG_PHY_ATHEROS 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/config.h" 1
# 77 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h" 2
typedef uint64_t iomux_v3_cfg_t;

#define MUX_CTRL_OFS_SHIFT 0
#define MUX_CTRL_OFS_MASK ((iomux_v3_cfg_t)0xfff << MUX_CTRL_OFS_SHIFT)
#define MUX_PAD_CTRL_OFS_SHIFT 12
#define MUX_PAD_CTRL_OFS_MASK ((iomux_v3_cfg_t)0xfff << MUX_PAD_CTRL_OFS_SHIFT)

#define MUX_SEL_INPUT_OFS_SHIFT 24
#define MUX_SEL_INPUT_OFS_MASK ((iomux_v3_cfg_t)0xfff << MUX_SEL_INPUT_OFS_SHIFT)


#define MUX_MODE_SHIFT 36
#define MUX_MODE_MASK ((iomux_v3_cfg_t)0x1f << MUX_MODE_SHIFT)
#define MUX_PAD_CTRL_SHIFT 41
#define MUX_PAD_CTRL_MASK ((iomux_v3_cfg_t)0x3ffff << MUX_PAD_CTRL_SHIFT)
#define MUX_SEL_INPUT_SHIFT 59
#define MUX_SEL_INPUT_MASK ((iomux_v3_cfg_t)0xf << MUX_SEL_INPUT_SHIFT)

#define MUX_PAD_CTRL(x) ((iomux_v3_cfg_t)(x) << MUX_PAD_CTRL_SHIFT)

#define IOMUX_PAD(pad_ctrl_ofs,mux_ctrl_ofs,mux_mode,sel_input_ofs,sel_input,pad_ctrl) (((iomux_v3_cfg_t)(mux_ctrl_ofs) << MUX_CTRL_OFS_SHIFT) | ((iomux_v3_cfg_t)(mux_mode) << MUX_MODE_SHIFT) | ((iomux_v3_cfg_t)(pad_ctrl_ofs) << MUX_PAD_CTRL_OFS_SHIFT) | ((iomux_v3_cfg_t)(pad_ctrl) << MUX_PAD_CTRL_SHIFT) | ((iomux_v3_cfg_t)(sel_input_ofs) << MUX_SEL_INPUT_OFS_SHIFT)| ((iomux_v3_cfg_t)(sel_input) << MUX_SEL_INPUT_SHIFT))
# 106 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mx6qsabrelite.h"
#define NO_PAD_CTRL (1 << 17)
#define GPIO_PIN_MASK 0x1f
#define GPIO_PORT_SHIFT 5
#define GPIO_PORT_MASK (0x7 << GPIO_PORT_SHIFT)
#define GPIO_PORTA (0 << GPIO_PORT_SHIFT)
#define GPIO_PORTB (1 << GPIO_PORT_SHIFT)
#define GPIO_PORTC (2 << GPIO_PORT_SHIFT)
#define GPIO_PORTD (3 << GPIO_PORT_SHIFT)
#define GPIO_PORTE (4 << GPIO_PORT_SHIFT)
#define GPIO_PORTF (5 << GPIO_PORT_SHIFT)

#define MUX_CONFIG_SION (0x1 << 4)
# 35 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/common.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../unimplemented.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../unimplemented.h"
#define __UNIMPLEMENTED_H__ 







#define RESOURCE(mapper,id) ps_io_map(mapper, (uintptr_t) id ##_PADDR, id ##_SIZE, 0, PS_MEM_NORMAL)
#define UNRESOURCE(mapper,id,addr) ps_io_unmap(mapper, addr, id ##_SIZE)


#define __aligned(x) __attribute__((aligned(x)))
#define unlikely(x) __builtin_expect(!!(x), 0)

#define MAX_PKT_SIZE 1536

#define BITS_PER_LONG 32

void udelay(uint32_t us);

unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base);


typedef uint64_t u64;
typedef uint32_t u32;
typedef uint16_t u16;
typedef uint8_t u8;

typedef int64_t s64;
typedef int32_t s32;
typedef int16_t s16;
typedef int8_t s8;

typedef unsigned long ulong;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned char uchar;

typedef u64 __u64;
typedef u32 __u32;
typedef u16 __u16;
typedef u8 __u8;

#define __bitwise 
#define __force 

typedef s64 __le64;
typedef s32 __le32;
typedef s16 __le16;
typedef s8 __le8;

typedef s64 __be64;
typedef s32 __be32;
typedef s16 __be16;
typedef s8 __be8;

#define gpio_init() 
# 36 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/common.h" 2
# 51 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/common.h"
#define ROUND(a,b) (((a) + (b) - 1) & ~((b) - 1))
#define DIV_ROUND(n,d) (((n) + ((d)/2)) / (d))
#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
#define roundup(x,y) ((((x) + ((y) - 1)) / (y)) * (y))

#define __ALIGN_MASK(x,mask) (((x)+(mask))&~(mask))






#define _DEBUG 1







#define debug_cond(cond,fmt,args...) do { if (cond) printf(fmt, ##args); } while (0)





#define debug(fmt,args...) debug_cond(_DEBUG, fmt, ##args)
# 87 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/common.h"
#define container_of(ptr,type,member) ({ const typeof( ((type *)0)->member ) *__mptr = (ptr); (type *)( (char *)__mptr - offsetof(type,member) );})
# 29 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/miiphy.h" 1
# 39 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/miiphy.h"
#define _miiphy_h_ 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h" 1





#define _LINUX_LIST_H 



#define LIST_POISON1 ((void *) 0x0)
#define LIST_POISON2 ((void *) 0x0)


#define ARCH_HAS_PREFETCH 
static inline void prefetch(const void *x) {;}
# 28 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
struct list_head {
 struct list_head *next, *prev;
};


static inline void INIT_LIST_HEAD(struct list_head *list)
{
 list->next = list;
 list->prev = list;
}







static inline void __list_add(struct list_head *new,
         struct list_head *prev,
         struct list_head *next)
{
 next->prev = new;
 new->next = next;
 new->prev = prev;
 prev->next = new;
}
# 63 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline void list_add(struct list_head *new, struct list_head *head)
{
 __list_add(new, head, head->next);
}
# 76 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline void list_add_tail(struct list_head *new, struct list_head *head)
{
 __list_add(new, head->prev, head);
}
# 88 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline void __list_del(struct list_head *prev, struct list_head *next)
{
 next->prev = prev;
 prev->next = next;
}







static inline void list_del(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 entry->next = ((void *) 0x0);
 entry->prev = ((void *) 0x0);
}
# 114 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline void list_replace(struct list_head *old,
    struct list_head *new)
{
 new->next = old->next;
 new->next->prev = new;
 new->prev = old->prev;
 new->prev->next = new;
}

static inline void list_replace_init(struct list_head *old,
     struct list_head *new)
{
 list_replace(old, new);
 INIT_LIST_HEAD(old);
}





static inline void list_del_init(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 INIT_LIST_HEAD(entry);
}






static inline void list_move(struct list_head *list, struct list_head *head)
{
 __list_del(list->prev, list->next);
 list_add(list, head);
}






static inline void list_move_tail(struct list_head *list,
      struct list_head *head)
{
 __list_del(list->prev, list->next);
 list_add_tail(list, head);
}






static inline int list_is_last(const struct list_head *list,
    const struct list_head *head)
{
 return list->next == head;
}





static inline int list_empty(const struct list_head *head)
{
 return head->next == head;
}
# 196 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline int list_empty_careful(const struct list_head *head)
{
 struct list_head *next = head->next;
 return (next == head) && (next == head->prev);
}





static inline int list_is_singular(const struct list_head *head)
{
 return !list_empty(head) && (head->next == head->prev);
}

static inline void __list_cut_position(struct list_head *list,
  struct list_head *head, struct list_head *entry)
{
 struct list_head *new_first = entry->next;
 list->next = head->next;
 list->next->prev = list;
 list->prev = entry;
 entry->next = list;
 head->next = new_first;
 new_first->prev = head;
}
# 237 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline void list_cut_position(struct list_head *list,
  struct list_head *head, struct list_head *entry)
{
 if (list_empty(head))
  return;
 if (list_is_singular(head) &&
  (head->next != entry && head != entry))
  return;
 if (entry == head)
  INIT_LIST_HEAD(list);
 else
  __list_cut_position(list, head, entry);
}

static inline void __list_splice(const struct list_head *list,
     struct list_head *prev,
     struct list_head *next)
{
 struct list_head *first = list->next;
 struct list_head *last = list->prev;

 first->prev = prev;
 prev->next = first;

 last->next = next;
 next->prev = last;
}






static inline void list_splice(const struct list_head *list,
    struct list_head *head)
{
 if (!list_empty(list))
  __list_splice(list, head, head->next);
}






static inline void list_splice_tail(struct list_head *list,
    struct list_head *head)
{
 if (!list_empty(list))
  __list_splice(list, head->prev, head);
}
# 296 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline void list_splice_init(struct list_head *list,
        struct list_head *head)
{
 if (!list_empty(list)) {
  __list_splice(list, head, head->next);
  INIT_LIST_HEAD(list);
 }
}
# 313 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
static inline void list_splice_tail_init(struct list_head *list,
      struct list_head *head)
{
 if (!list_empty(list)) {
  __list_splice(list, head->prev, head);
  INIT_LIST_HEAD(list);
 }
}







#define list_entry(ptr,type,member) container_of(ptr, type, member)
# 339 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_first_entry(ptr,type,member) list_entry((ptr)->next, type, member)







#define list_for_each(pos,head) for (pos = (head)->next; prefetch(pos->next), pos != (head); pos = pos->next)
# 361 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define __list_for_each(pos,head) for (pos = (head)->next; pos != (head); pos = pos->next)







#define list_for_each_prev(pos,head) for (pos = (head)->prev; prefetch(pos->prev), pos != (head); pos = pos->prev)
# 379 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_safe(pos,n,head) for (pos = (head)->next, n = pos->next; pos != (head); pos = n, n = pos->next)
# 389 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_prev_safe(pos,n,head) for (pos = (head)->prev, n = pos->prev; prefetch(pos->prev), pos != (head); pos = n, n = pos->prev)
# 400 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry(pos,head,member) for (pos = list_entry((head)->next, typeof(*pos), member); prefetch(pos->member.next), &pos->member != (head); pos = list_entry(pos->member.next, typeof(*pos), member))
# 411 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_reverse(pos,head,member) for (pos = list_entry((head)->prev, typeof(*pos), member); prefetch(pos->member.prev), &pos->member != (head); pos = list_entry(pos->member.prev, typeof(*pos), member))
# 424 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_prepare_entry(pos,head,member) ((pos) ? : list_entry(head, typeof(*pos), member))
# 436 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_continue(pos,head,member) for (pos = list_entry(pos->member.next, typeof(*pos), member); prefetch(pos->member.next), &pos->member != (head); pos = list_entry(pos->member.next, typeof(*pos), member))
# 450 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_continue_reverse(pos,head,member) for (pos = list_entry(pos->member.prev, typeof(*pos), member); prefetch(pos->member.prev), &pos->member != (head); pos = list_entry(pos->member.prev, typeof(*pos), member))
# 463 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_from(pos,head,member) for (; prefetch(pos->member.next), &pos->member != (head); pos = list_entry(pos->member.next, typeof(*pos), member))
# 474 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_safe(pos,n,head,member) for (pos = list_entry((head)->next, typeof(*pos), member), n = list_entry(pos->member.next, typeof(*pos), member); &pos->member != (head); pos = n, n = list_entry(n->member.next, typeof(*n), member))
# 490 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_safe_continue(pos,n,head,member) for (pos = list_entry(pos->member.next, typeof(*pos), member), n = list_entry(pos->member.next, typeof(*pos), member); &pos->member != (head); pos = n, n = list_entry(n->member.next, typeof(*n), member))
# 506 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_safe_from(pos,n,head,member) for (n = list_entry(pos->member.next, typeof(*pos), member); &pos->member != (head); pos = n, n = list_entry(n->member.next, typeof(*n), member))
# 521 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define list_for_each_entry_safe_reverse(pos,n,head,member) for (pos = list_entry((head)->prev, typeof(*pos), member), n = list_entry(pos->member.prev, typeof(*pos), member); &pos->member != (head); pos = n, n = list_entry(n->member.prev, typeof(*n), member))
# 534 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
struct hlist_head {
 struct hlist_node *first;
};

struct hlist_node {
 struct hlist_node *next, **pprev;
};

#define HLIST_HEAD_INIT { .first = NULL }
#define HLIST_HEAD(name) struct hlist_head name = { .first = NULL }
#define INIT_HLIST_HEAD(ptr) ((ptr)->first = NULL)
static inline void INIT_HLIST_NODE(struct hlist_node *h)
{
 h->next = ((void*)0);
 h->pprev = ((void*)0);
}

static inline int hlist_unhashed(const struct hlist_node *h)
{
 return !h->pprev;
}

static inline int hlist_empty(const struct hlist_head *h)
{
 return !h->first;
}

static inline void __hlist_del(struct hlist_node *n)
{
 struct hlist_node *next = n->next;
 struct hlist_node **pprev = n->pprev;
 *pprev = next;
 if (next)
  next->pprev = pprev;
}

static inline void hlist_del(struct hlist_node *n)
{
 __hlist_del(n);
 n->next = ((void *) 0x0);
 n->pprev = ((void *) 0x0);
}

static inline void hlist_del_init(struct hlist_node *n)
{
 if (!hlist_unhashed(n)) {
  __hlist_del(n);
  INIT_HLIST_NODE(n);
 }
}

static inline void hlist_add_head(struct hlist_node *n, struct hlist_head *h)
{
 struct hlist_node *first = h->first;
 n->next = first;
 if (first)
  first->pprev = &n->next;
 h->first = n;
 n->pprev = &h->first;
}


static inline void hlist_add_before(struct hlist_node *n,
     struct hlist_node *next)
{
 n->pprev = next->pprev;
 n->next = next;
 next->pprev = &n->next;
 *(n->pprev) = n;
}

static inline void hlist_add_after(struct hlist_node *n,
     struct hlist_node *next)
{
 next->next = n->next;
 n->next = next;
 next->pprev = &n->next;

 if(next->next)
  next->next->pprev = &next->next;
}

#define hlist_entry(ptr,type,member) container_of(ptr,type,member)

#define hlist_for_each(pos,head) for (pos = (head)->first; pos && ({ prefetch(pos->next); 1; }); pos = pos->next)



#define hlist_for_each_safe(pos,n,head) for (pos = (head)->first; pos && ({ n = pos->next; 1; }); pos = n)
# 633 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define hlist_for_each_entry(tpos,pos,head,member) for (pos = (head)->first; pos && ({ prefetch(pos->next); 1;}) && ({ tpos = hlist_entry(pos, typeof(*tpos), member); 1;}); pos = pos->next)
# 645 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define hlist_for_each_entry_continue(tpos,pos,member) for (pos = (pos)->next; pos && ({ prefetch(pos->next); 1;}) && ({ tpos = hlist_entry(pos, typeof(*tpos), member); 1;}); pos = pos->next)
# 657 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define hlist_for_each_entry_from(tpos,pos,member) for (; pos && ({ prefetch(pos->next); 1;}) && ({ tpos = hlist_entry(pos, typeof(*tpos), member); 1;}); pos = pos->next)
# 670 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/list.h"
#define hlist_for_each_entry_safe(tpos,pos,n,head,member) for (pos = (head)->first; pos && ({ n = pos->next; 1; }) && ({ tpos = hlist_entry(pos, typeof(*tpos), member); 1;}); pos = n)
# 42 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/miiphy.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/phy.h" 1
# 30 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/phy.h"
#define _PHY_H 



# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mii.h" 1
# 13 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mii.h"
#define __LINUX_MII_H__ 



#define MII_BMCR 0x00
#define MII_BMSR 0x01
#define MII_PHYSID1 0x02
#define MII_PHYSID2 0x03
#define MII_ADVERTISE 0x04
#define MII_LPA 0x05
#define MII_EXPANSION 0x06
#define MII_CTRL1000 0x09
#define MII_STAT1000 0x0a
#define MII_ESTATUS 0x0f
#define MII_DCOUNTER 0x12
#define MII_FCSCOUNTER 0x13
#define MII_NWAYTEST 0x14
#define MII_RERRCOUNTER 0x15
#define MII_SREVISION 0x16
#define MII_RESV1 0x17
#define MII_LBRERROR 0x18
#define MII_PHYADDR 0x19
#define MII_RESV2 0x1a
#define MII_TPISTATUS 0x1b
#define MII_NCONFIG 0x1c


#define BMCR_RESV 0x003f
#define BMCR_SPEED1000 0x0040
#define BMCR_CTST 0x0080
#define BMCR_FULLDPLX 0x0100
#define BMCR_ANRESTART 0x0200
#define BMCR_ISOLATE 0x0400
#define BMCR_PDOWN 0x0800
#define BMCR_ANENABLE 0x1000
#define BMCR_SPEED100 0x2000
#define BMCR_LOOPBACK 0x4000
#define BMCR_RESET 0x8000


#define BMSR_ERCAP 0x0001
#define BMSR_JCD 0x0002
#define BMSR_LSTATUS 0x0004
#define BMSR_ANEGCAPABLE 0x0008
#define BMSR_RFAULT 0x0010
#define BMSR_ANEGCOMPLETE 0x0020
#define BMSR_RESV 0x00c0
#define BMSR_ESTATEN 0x0100
#define BMSR_100HALF2 0x0200
#define BMSR_100FULL2 0x0400
#define BMSR_10HALF 0x0800
#define BMSR_10FULL 0x1000
#define BMSR_100HALF 0x2000
#define BMSR_100FULL 0x4000
#define BMSR_100BASE4 0x8000


#define ADVERTISE_SLCT 0x001f
#define ADVERTISE_CSMA 0x0001
#define ADVERTISE_10HALF 0x0020
#define ADVERTISE_1000XFULL 0x0020
#define ADVERTISE_10FULL 0x0040
#define ADVERTISE_1000XHALF 0x0040
#define ADVERTISE_100HALF 0x0080
#define ADVERTISE_1000XPAUSE 0x0080
#define ADVERTISE_100FULL 0x0100
#define ADVERTISE_1000XPSE_ASYM 0x0100
#define ADVERTISE_100BASE4 0x0200
#define ADVERTISE_PAUSE_CAP 0x0400
#define ADVERTISE_PAUSE_ASYM 0x0800
#define ADVERTISE_RESV 0x1000
#define ADVERTISE_RFAULT 0x2000
#define ADVERTISE_LPACK 0x4000
#define ADVERTISE_NPAGE 0x8000

#define ADVERTISE_FULL (ADVERTISE_100FULL | ADVERTISE_10FULL | ADVERTISE_CSMA)

#define ADVERTISE_ALL (ADVERTISE_10HALF | ADVERTISE_10FULL | ADVERTISE_100HALF | ADVERTISE_100FULL)



#define LPA_SLCT 0x001f
#define LPA_10HALF 0x0020
#define LPA_1000XFULL 0x0020
#define LPA_10FULL 0x0040
#define LPA_1000XHALF 0x0040
#define LPA_100HALF 0x0080
#define LPA_1000XPAUSE 0x0080
#define LPA_100FULL 0x0100
#define LPA_1000XPAUSE_ASYM 0x0100
#define LPA_100BASE4 0x0200
#define LPA_PAUSE_CAP 0x0400
#define LPA_PAUSE_ASYM 0x0800
#define LPA_RESV 0x1000
#define LPA_RFAULT 0x2000
#define LPA_LPACK 0x4000
#define LPA_NPAGE 0x8000

#define LPA_DUPLEX (LPA_10FULL | LPA_100FULL)
#define LPA_100 (LPA_100FULL | LPA_100HALF | LPA_100BASE4)


#define EXPANSION_NWAY 0x0001
#define EXPANSION_LCWP 0x0002
#define EXPANSION_ENABLENPAGE 0x0004
#define EXPANSION_NPCAPABLE 0x0008
#define EXPANSION_MFAULTS 0x0010
#define EXPANSION_RESV 0xffe0

#define ESTATUS_1000_TFULL 0x2000
#define ESTATUS_1000_THALF 0x1000


#define NWAYTEST_RESV1 0x00ff
#define NWAYTEST_LOOPBACK 0x0100
#define NWAYTEST_RESV2 0xfe00


#define ADVERTISE_1000FULL 0x0200
#define ADVERTISE_1000HALF 0x0100


#define LPA_1000LOCALRXOK 0x2000
#define LPA_1000REMRXOK 0x1000
#define LPA_1000FULL 0x0800
#define LPA_1000HALF 0x0400


#define FLOW_CTRL_TX 0x01
#define FLOW_CTRL_RX 0x02
# 158 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mii.h"
static inline unsigned int mii_nway_result (unsigned int negotiated)
{
 unsigned int ret;

 if (negotiated & 0x0100)
  ret = 0x0100;
 else if (negotiated & 0x0200)
  ret = 0x0200;
 else if (negotiated & 0x0080)
  ret = 0x0080;
 else if (negotiated & 0x0040)
  ret = 0x0040;
 else
  ret = 0x0020;

 return ret;
}
# 185 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mii.h"
static inline unsigned int mii_duplex (unsigned int duplex_lock,
           unsigned int negotiated)
{
 if (duplex_lock)
  return 1;
 if (mii_nway_result(negotiated) & (0x0040 | 0x0100))
  return 1;
 return 0;
}
# 35 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/phy.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h" 1
# 18 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
#define _LINUX_ETHTOOL_H 




struct ethtool_cmd {
 uint32_t cmd;
 uint32_t supported;
 uint32_t advertising;
 uint16_t speed;
 uint8_t duplex;
 uint8_t port;
 uint8_t phy_address;
 uint8_t transceiver;
 uint8_t autoneg;
 uint8_t mdio_support;
 uint32_t maxtxpkt;
 uint32_t maxrxpkt;
 uint16_t speed_hi;
 uint8_t eth_tp_mdix;
 uint8_t reserved2;
 uint32_t lp_advertising;
 uint32_t reserved[2];
};

static inline void ethtool_cmd_speed_set(struct ethtool_cmd *ep,
      uint32_t speed)
{

 ep->speed = (uint16_t)speed;
 ep->speed_hi = (uint16_t)(speed >> 16);
}

static inline uint32_t ethtool_cmd_speed(struct ethtool_cmd *ep)
{
 return (ep->speed_hi << 16) | ep->speed;
}

#define ETHTOOL_FWVERS_LEN 32
#define ETHTOOL_BUSINFO_LEN 32

struct ethtool_drvinfo {
 uint32_t cmd;
 char driver[32];
 char version[32];
 char fw_version[32];
 char bus_info[32];

 char reserved1[32];
 char reserved2[12];







 uint32_t n_priv_flags;
 uint32_t n_stats;
 uint32_t testinfo_len;
 uint32_t eedump_len;
 uint32_t regdump_len;
};

#define SOPASS_MAX 6

struct ethtool_wolinfo {
 uint32_t cmd;
 uint32_t supported;
 uint32_t wolopts;
 uint8_t sopass[6];
};


struct ethtool_value {
 uint32_t cmd;
 uint32_t data;
};


struct ethtool_regs {
 uint32_t cmd;
 uint32_t version;
 uint32_t len;
 uint8_t data[0];
};


struct ethtool_eeprom {
 uint32_t cmd;
 uint32_t magic;
 uint32_t offset;
 uint32_t len;
 uint8_t data[0];
};


struct ethtool_coalesce {
 uint32_t cmd;





 uint32_t rx_coalesce_usecs;







 uint32_t rx_max_coalesced_frames;






 uint32_t rx_coalesce_usecs_irq;
 uint32_t rx_max_coalesced_frames_irq;





 uint32_t tx_coalesce_usecs;







 uint32_t tx_max_coalesced_frames;






 uint32_t tx_coalesce_usecs_irq;
 uint32_t tx_max_coalesced_frames_irq;






 uint32_t stats_block_coalesce_usecs;
# 176 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
 uint32_t use_adaptive_rx_coalesce;
 uint32_t use_adaptive_tx_coalesce;





 uint32_t pkt_rate_low;
 uint32_t rx_coalesce_usecs_low;
 uint32_t rx_max_coalesced_frames_low;
 uint32_t tx_coalesce_usecs_low;
 uint32_t tx_max_coalesced_frames_low;
# 198 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
 uint32_t pkt_rate_high;
 uint32_t rx_coalesce_usecs_high;
 uint32_t rx_max_coalesced_frames_high;
 uint32_t tx_coalesce_usecs_high;
 uint32_t tx_max_coalesced_frames_high;




 uint32_t rate_sample_interval;
};


struct ethtool_ringparam {
 uint32_t cmd;





 uint32_t rx_max_pending;
 uint32_t rx_mini_max_pending;
 uint32_t rx_jumbo_max_pending;
 uint32_t tx_max_pending;




 uint32_t rx_pending;
 uint32_t rx_mini_pending;
 uint32_t rx_jumbo_pending;
 uint32_t tx_pending;
};


struct ethtool_pauseparam {
 uint32_t cmd;
# 246 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
 uint32_t autoneg;
 uint32_t rx_pause;
 uint32_t tx_pause;
};

#define ETH_GSTRING_LEN 32
enum ethtool_stringset {
 ETH_SS_TEST = 0,
 ETH_SS_STATS,
 ETH_SS_PRIV_FLAGS,
 ETH_SS_NTUPLE_FILTERS,
 ETH_SS_FEATURES,
};


struct ethtool_gstrings {
 uint32_t cmd;
 uint32_t string_set;
 uint32_t len;
 uint8_t data[0];
};

struct ethtool_sset_info {
 uint32_t cmd;
 uint32_t reserved;
 uint64_t sset_mask;

 uint32_t data[0];



};

enum ethtool_test_flags {
 ETH_TEST_FL_OFFLINE = (1 << 0),
 ETH_TEST_FL_FAILED = (1 << 1),
};


struct ethtool_test {
 uint32_t cmd;
 uint32_t flags;
 uint32_t reserved;
 uint32_t len;
 uint64_t data[0];
};


struct ethtool_stats {
 uint32_t cmd;
 uint32_t n_stats;
 uint64_t data[0];
};

struct ethtool_perm_addr {
 uint32_t cmd;
 uint32_t size;
 uint8_t data[0];
};
# 315 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
enum ethtool_flags {
 ETH_FLAG_TXVLAN = (1 << 7),
 ETH_FLAG_RXVLAN = (1 << 8),
 ETH_FLAG_LRO = (1 << 15),
 ETH_FLAG_NTUPLE = (1 << 27),
 ETH_FLAG_RXHASH = (1 << 28),
};
# 339 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
struct ethtool_tcpip4_spec {
 uint32_t ip4src;
 uint32_t ip4dst;
 uint16_t psrc;
 uint16_t pdst;
 uint8_t tos;
};
# 356 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
struct ethtool_ah_espip4_spec {
 uint32_t ip4src;
 uint32_t ip4dst;
 uint32_t spi;
 uint8_t tos;
};

#define ETH_RX_NFC_IP4 1
# 374 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
struct ethtool_usrip4_spec {
 uint32_t ip4src;
 uint32_t ip4dst;
 uint32_t l4_4_bytes;
 uint8_t tos;
 uint8_t ip_ver;
 uint8_t proto;
};
# 391 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
struct ethtool_rxfh_indir {
 uint32_t cmd;
 uint32_t size;
 uint32_t ring_index[0];
};

#define ETHTOOL_FLASH_MAX_FILENAME 128
enum ethtool_flash_op_type {
 ETHTOOL_FLASH_ALL_REGIONS = 0,
};


struct ethtool_flash {
 uint32_t cmd;
 uint32_t region;
 char data[128];
};
# 418 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
struct ethtool_get_features_block {
 uint32_t available;
 uint32_t requested;
 uint32_t active;
 uint32_t never_changed;
};
# 432 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
struct ethtool_gfeatures {
 uint32_t cmd;
 uint32_t size;
 struct ethtool_get_features_block features[0];
};






struct ethtool_set_features_block {
 uint32_t valid;
 uint32_t requested;
};







struct ethtool_sfeatures {
 uint32_t cmd;
 uint32_t size;
 struct ethtool_set_features_block features[0];
};
# 485 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
enum ethtool_sfeatures_retval_bits {
 ETHTOOL_F_UNSUPPORTED__BIT,
 ETHTOOL_F_WISH__BIT,
 ETHTOOL_F_COMPAT__BIT,
};

#define ETHTOOL_F_UNSUPPORTED (1 << ETHTOOL_F_UNSUPPORTED__BIT)
#define ETHTOOL_F_WISH (1 << ETHTOOL_F_WISH__BIT)
#define ETHTOOL_F_COMPAT (1 << ETHTOOL_F_COMPAT__BIT)


#define ETHTOOL_GSET 0x00000001
#define ETHTOOL_SSET 0x00000002
#define ETHTOOL_GDRVINFO 0x00000003
#define ETHTOOL_GREGS 0x00000004
#define ETHTOOL_GWOL 0x00000005
#define ETHTOOL_SWOL 0x00000006
#define ETHTOOL_GMSGLVL 0x00000007
#define ETHTOOL_SMSGLVL 0x00000008
#define ETHTOOL_NWAY_RST 0x00000009


#define ETHTOOL_GLINK 0x0000000a
#define ETHTOOL_GEEPROM 0x0000000b
#define ETHTOOL_SEEPROM 0x0000000c
#define ETHTOOL_GCOALESCE 0x0000000e
#define ETHTOOL_SCOALESCE 0x0000000f
#define ETHTOOL_GRINGPARAM 0x00000010
#define ETHTOOL_SRINGPARAM 0x00000011
#define ETHTOOL_GPAUSEPARAM 0x00000012
#define ETHTOOL_SPAUSEPARAM 0x00000013
#define ETHTOOL_GRXCSUM 0x00000014
#define ETHTOOL_SRXCSUM 0x00000015
#define ETHTOOL_GTXCSUM 0x00000016
#define ETHTOOL_STXCSUM 0x00000017
#define ETHTOOL_GSG 0x00000018

#define ETHTOOL_SSG 0x00000019

#define ETHTOOL_TEST 0x0000001a
#define ETHTOOL_GSTRINGS 0x0000001b
#define ETHTOOL_PHYS_ID 0x0000001c
#define ETHTOOL_GSTATS 0x0000001d
#define ETHTOOL_GTSO 0x0000001e
#define ETHTOOL_STSO 0x0000001f
#define ETHTOOL_GPERMADDR 0x00000020
#define ETHTOOL_GUFO 0x00000021
#define ETHTOOL_SUFO 0x00000022
#define ETHTOOL_GGSO 0x00000023
#define ETHTOOL_SGSO 0x00000024
#define ETHTOOL_GFLAGS 0x00000025
#define ETHTOOL_SFLAGS 0x00000026
#define ETHTOOL_GPFLAGS 0x00000027
#define ETHTOOL_SPFLAGS 0x00000028

#define ETHTOOL_GRXFH 0x00000029
#define ETHTOOL_SRXFH 0x0000002a
#define ETHTOOL_GGRO 0x0000002b
#define ETHTOOL_SGRO 0x0000002c
#define ETHTOOL_GRXRINGS 0x0000002d
#define ETHTOOL_GRXCLSRLCNT 0x0000002e
#define ETHTOOL_GRXCLSRULE 0x0000002f
#define ETHTOOL_GRXCLSRLALL 0x00000030
#define ETHTOOL_SRXCLSRLDEL 0x00000031
#define ETHTOOL_SRXCLSRLINS 0x00000032
#define ETHTOOL_FLASHDEV 0x00000033
#define ETHTOOL_RESET 0x00000034
#define ETHTOOL_SRXNTUPLE 0x00000035
#define ETHTOOL_GRXNTUPLE 0x00000036
#define ETHTOOL_GSSET_INFO 0x00000037
#define ETHTOOL_GRXFHINDIR 0x00000038
#define ETHTOOL_SRXFHINDIR 0x00000039

#define ETHTOOL_GFEATURES 0x0000003a
#define ETHTOOL_SFEATURES 0x0000003b


#define SPARC_ETH_GSET ETHTOOL_GSET
#define SPARC_ETH_SSET ETHTOOL_SSET


#define SUPPORTED_10baseT_Half (1 << 0)
#define SUPPORTED_10baseT_Full (1 << 1)
#define SUPPORTED_100baseT_Half (1 << 2)
#define SUPPORTED_100baseT_Full (1 << 3)
#define SUPPORTED_1000baseT_Half (1 << 4)
#define SUPPORTED_1000baseT_Full (1 << 5)
#define SUPPORTED_Autoneg (1 << 6)
#define SUPPORTED_TP (1 << 7)
#define SUPPORTED_AUI (1 << 8)
#define SUPPORTED_MII (1 << 9)
#define SUPPORTED_FIBRE (1 << 10)
#define SUPPORTED_BNC (1 << 11)
#define SUPPORTED_10000baseT_Full (1 << 12)
#define SUPPORTED_Pause (1 << 13)
#define SUPPORTED_Asym_Pause (1 << 14)
#define SUPPORTED_2500baseX_Full (1 << 15)
#define SUPPORTED_Backplane (1 << 16)
#define SUPPORTED_1000baseKX_Full (1 << 17)
#define SUPPORTED_10000baseKX4_Full (1 << 18)
#define SUPPORTED_10000baseKR_Full (1 << 19)
#define SUPPORTED_10000baseR_FEC (1 << 20)


#define ADVERTISED_10baseT_Half (1 << 0)
#define ADVERTISED_10baseT_Full (1 << 1)
#define ADVERTISED_100baseT_Half (1 << 2)
#define ADVERTISED_100baseT_Full (1 << 3)
#define ADVERTISED_1000baseT_Half (1 << 4)
#define ADVERTISED_1000baseT_Full (1 << 5)
#define ADVERTISED_Autoneg (1 << 6)
#define ADVERTISED_TP (1 << 7)
#define ADVERTISED_AUI (1 << 8)
#define ADVERTISED_MII (1 << 9)
#define ADVERTISED_FIBRE (1 << 10)
#define ADVERTISED_BNC (1 << 11)
#define ADVERTISED_10000baseT_Full (1 << 12)
#define ADVERTISED_Pause (1 << 13)
#define ADVERTISED_Asym_Pause (1 << 14)
#define ADVERTISED_2500baseX_Full (1 << 15)
#define ADVERTISED_Backplane (1 << 16)
#define ADVERTISED_1000baseKX_Full (1 << 17)
#define ADVERTISED_10000baseKX4_Full (1 << 18)
#define ADVERTISED_10000baseKR_Full (1 << 19)
#define ADVERTISED_10000baseR_FEC (1 << 20)
# 618 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
#define SPEED_10 10
#define SPEED_100 100
#define SPEED_1000 1000
#define SPEED_2500 2500
#define SPEED_10000 10000


#define DUPLEX_HALF 0x00
#define DUPLEX_FULL 0x01


#define PORT_TP 0x00
#define PORT_AUI 0x01
#define PORT_MII 0x02
#define PORT_FIBRE 0x03
#define PORT_BNC 0x04
#define PORT_DA 0x05
#define PORT_NONE 0xef
#define PORT_OTHER 0xff


#define XCVR_INTERNAL 0x00
#define XCVR_EXTERNAL 0x01
#define XCVR_DUMMY1 0x02
#define XCVR_DUMMY2 0x03
#define XCVR_DUMMY3 0x04




#define AUTONEG_DISABLE 0x00
#define AUTONEG_ENABLE 0x01


#define ETH_TP_MDI_INVALID 0x00
#define ETH_TP_MDI 0x01
#define ETH_TP_MDI_X 0x02


#define WAKE_PHY (1 << 0)
#define WAKE_UCAST (1 << 1)
#define WAKE_MCAST (1 << 2)
#define WAKE_BCAST (1 << 3)
#define WAKE_ARP (1 << 4)
#define WAKE_MAGIC (1 << 5)
#define WAKE_MAGICSECURE (1 << 6)


#define TCP_V4_FLOW 0x01
#define UDP_V4_FLOW 0x02
#define SCTP_V4_FLOW 0x03
#define AH_ESP_V4_FLOW 0x04
#define TCP_V6_FLOW 0x05
#define UDP_V6_FLOW 0x06
#define SCTP_V6_FLOW 0x07
#define AH_ESP_V6_FLOW 0x08
#define AH_V4_FLOW 0x09
#define ESP_V4_FLOW 0x0a
#define AH_V6_FLOW 0x0b
#define ESP_V6_FLOW 0x0c
#define IP_USER_FLOW 0x0d
#define IPV4_FLOW 0x10
#define IPV6_FLOW 0x11
#define ETHER_FLOW 0x12


#define RXH_L2DA (1 << 1)
#define RXH_VLAN (1 << 2)
#define RXH_L3_PROTO (1 << 3)
#define RXH_IP_SRC (1 << 4)
#define RXH_IP_DST (1 << 5)
#define RXH_L4_B_0_1 (1 << 6)
#define RXH_L4_B_2_3 (1 << 7)
#define RXH_DISCARD (1U << 31)

#define RX_CLS_FLOW_DISC 0xffffffffffffffffULL
# 702 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/ethtool.h"
enum ethtool_reset_flags {





 ETH_RESET_MGMT = 1 << 0,
 ETH_RESET_IRQ = 1 << 1,
 ETH_RESET_DMA = 1 << 2,
 ETH_RESET_FILTER = 1 << 3,
 ETH_RESET_OFFLOAD = 1 << 4,
 ETH_RESET_MAC = 1 << 5,
 ETH_RESET_PHY = 1 << 6,
 ETH_RESET_RAM = 1 << 7,


 ETH_RESET_DEDICATED = 0x0000ffff,

 ETH_RESET_ALL = 0xffffffff,

};
#define ETH_RESET_SHARED_SHIFT 16
# 36 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/phy.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mdio.h" 1
# 15 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/mdio.h"
#define __LINUX_MDIO_H__ 




#define MDIO_MMD_PMAPMD 1

#define MDIO_MMD_WIS 2
#define MDIO_MMD_PCS 3
#define MDIO_MMD_PHYXS 4
#define MDIO_MMD_DTEXS 5
#define MDIO_MMD_TC 6
#define MDIO_MMD_AN 7
#define MDIO_MMD_C22EXT 29
#define MDIO_MMD_VEND1 30
#define MDIO_MMD_VEND2 31


#define MDIO_CTRL1 MII_BMCR
#define MDIO_STAT1 MII_BMSR
#define MDIO_DEVID1 MII_PHYSID1
#define MDIO_DEVID2 MII_PHYSID2
#define MDIO_SPEED 4
#define MDIO_DEVS1 5
#define MDIO_DEVS2 6
#define MDIO_CTRL2 7
#define MDIO_STAT2 8
#define MDIO_PMA_TXDIS 9
#define MDIO_PMA_RXDET 10
#define MDIO_PMA_EXTABLE 11
#define MDIO_PKGID1 14
#define MDIO_PKGID2 15
#define MDIO_AN_ADVERTISE 16
#define MDIO_AN_LPA 19
#define MDIO_PHYXS_LNSTAT 24


#define MDIO_PMA_10GBT_SWAPPOL 130
#define MDIO_PMA_10GBT_TXPWR 131
#define MDIO_PMA_10GBT_SNR 133

#define MDIO_PMA_10GBR_FECABLE 170
#define MDIO_PCS_10GBX_STAT1 24
#define MDIO_PCS_10GBRT_STAT1 32
#define MDIO_PCS_10GBRT_STAT2 33
#define MDIO_AN_10GBT_CTRL 32
#define MDIO_AN_10GBT_STAT 33
#define MDIO_AN_EEE_ADV 60


#define MDIO_PMA_LASI_RXCTRL 0x9000
#define MDIO_PMA_LASI_TXCTRL 0x9001
#define MDIO_PMA_LASI_CTRL 0x9002
#define MDIO_PMA_LASI_RXSTAT 0x9003
#define MDIO_PMA_LASI_TXSTAT 0x9004
#define MDIO_PMA_LASI_STAT 0x9005



#define MDIO_CTRL1_SPEEDSELEXT (BMCR_SPEED1000 | BMCR_SPEED100)

#define MDIO_CTRL1_SPEEDSEL (MDIO_CTRL1_SPEEDSELEXT | 0x003c)
#define MDIO_CTRL1_FULLDPLX BMCR_FULLDPLX
#define MDIO_CTRL1_LPOWER BMCR_PDOWN
#define MDIO_CTRL1_RESET BMCR_RESET
#define MDIO_PMA_CTRL1_LOOPBACK 0x0001
#define MDIO_PMA_CTRL1_SPEED1000 BMCR_SPEED1000
#define MDIO_PMA_CTRL1_SPEED100 BMCR_SPEED100
#define MDIO_PCS_CTRL1_LOOPBACK BMCR_LOOPBACK
#define MDIO_PHYXS_CTRL1_LOOPBACK BMCR_LOOPBACK
#define MDIO_AN_CTRL1_RESTART BMCR_ANRESTART
#define MDIO_AN_CTRL1_ENABLE BMCR_ANENABLE
#define MDIO_AN_CTRL1_XNP 0x2000


#define MDIO_CTRL1_SPEED10G (MDIO_CTRL1_SPEEDSELEXT | 0x00)

#define MDIO_CTRL1_SPEED10P2B (MDIO_CTRL1_SPEEDSELEXT | 0x04)


#define MDIO_STAT1_LPOWERABLE 0x0002
#define MDIO_STAT1_LSTATUS BMSR_LSTATUS
#define MDIO_STAT1_FAULT 0x0080
#define MDIO_AN_STAT1_LPABLE 0x0001
#define MDIO_AN_STAT1_ABLE BMSR_ANEGCAPABLE
#define MDIO_AN_STAT1_RFAULT BMSR_RFAULT
#define MDIO_AN_STAT1_COMPLETE BMSR_ANEGCOMPLETE
#define MDIO_AN_STAT1_PAGE 0x0040
#define MDIO_AN_STAT1_XNP 0x0080


#define MDIO_SPEED_10G 0x0001
#define MDIO_PMA_SPEED_2B 0x0002
#define MDIO_PMA_SPEED_10P 0x0004
#define MDIO_PMA_SPEED_1000 0x0010
#define MDIO_PMA_SPEED_100 0x0020
#define MDIO_PMA_SPEED_10 0x0040
#define MDIO_PCS_SPEED_10P2B 0x0002


#define MDIO_DEVS_PRESENT(devad) (1 << (devad))
#define MDIO_DEVS_PMAPMD MDIO_DEVS_PRESENT(MDIO_MMD_PMAPMD)
#define MDIO_DEVS_WIS MDIO_DEVS_PRESENT(MDIO_MMD_WIS)
#define MDIO_DEVS_PCS MDIO_DEVS_PRESENT(MDIO_MMD_PCS)
#define MDIO_DEVS_PHYXS MDIO_DEVS_PRESENT(MDIO_MMD_PHYXS)
#define MDIO_DEVS_DTEXS MDIO_DEVS_PRESENT(MDIO_MMD_DTEXS)
#define MDIO_DEVS_TC MDIO_DEVS_PRESENT(MDIO_MMD_TC)
#define MDIO_DEVS_AN MDIO_DEVS_PRESENT(MDIO_MMD_AN)
#define MDIO_DEVS_C22EXT MDIO_DEVS_PRESENT(MDIO_MMD_C22EXT)
#define MDIO_DEVS_VEND1 MDIO_DEVS_PRESENT(MDIO_MMD_VEND1)
#define MDIO_DEVS_VEND2 MDIO_DEVS_PRESENT(MDIO_MMD_VEND2)

#define MDIO_DEVS_LINK (MDIO_DEVS_PMAPMD | MDIO_DEVS_WIS | MDIO_DEVS_PCS | MDIO_DEVS_PHYXS | MDIO_DEVS_DTEXS | MDIO_DEVS_AN)







#define MDIO_PMA_CTRL2_TYPE 0x000f
#define MDIO_PMA_CTRL2_10GBCX4 0x0000
#define MDIO_PMA_CTRL2_10GBEW 0x0001
#define MDIO_PMA_CTRL2_10GBLW 0x0002
#define MDIO_PMA_CTRL2_10GBSW 0x0003
#define MDIO_PMA_CTRL2_10GBLX4 0x0004
#define MDIO_PMA_CTRL2_10GBER 0x0005
#define MDIO_PMA_CTRL2_10GBLR 0x0006
#define MDIO_PMA_CTRL2_10GBSR 0x0007
#define MDIO_PMA_CTRL2_10GBLRM 0x0008
#define MDIO_PMA_CTRL2_10GBT 0x0009
#define MDIO_PMA_CTRL2_10GBKX4 0x000a
#define MDIO_PMA_CTRL2_10GBKR 0x000b
#define MDIO_PMA_CTRL2_1000BT 0x000c
#define MDIO_PMA_CTRL2_1000BKX 0x000d
#define MDIO_PMA_CTRL2_100BTX 0x000e
#define MDIO_PMA_CTRL2_10BT 0x000f
#define MDIO_PCS_CTRL2_TYPE 0x0003
#define MDIO_PCS_CTRL2_10GBR 0x0000
#define MDIO_PCS_CTRL2_10GBX 0x0001
#define MDIO_PCS_CTRL2_10GBW 0x0002
#define MDIO_PCS_CTRL2_10GBT 0x0003


#define MDIO_STAT2_RXFAULT 0x0400
#define MDIO_STAT2_TXFAULT 0x0800
#define MDIO_STAT2_DEVPRST 0xc000
#define MDIO_STAT2_DEVPRST_VAL 0x8000
#define MDIO_PMA_STAT2_LBABLE 0x0001
#define MDIO_PMA_STAT2_10GBEW 0x0002
#define MDIO_PMA_STAT2_10GBLW 0x0004
#define MDIO_PMA_STAT2_10GBSW 0x0008
#define MDIO_PMA_STAT2_10GBLX4 0x0010
#define MDIO_PMA_STAT2_10GBER 0x0020
#define MDIO_PMA_STAT2_10GBLR 0x0040
#define MDIO_PMA_STAT2_10GBSR 0x0080
#define MDIO_PMD_STAT2_TXDISAB 0x0100
#define MDIO_PMA_STAT2_EXTABLE 0x0200
#define MDIO_PMA_STAT2_RXFLTABLE 0x1000
#define MDIO_PMA_STAT2_TXFLTABLE 0x2000
#define MDIO_PCS_STAT2_10GBR 0x0001
#define MDIO_PCS_STAT2_10GBX 0x0002
#define MDIO_PCS_STAT2_10GBW 0x0004
#define MDIO_PCS_STAT2_RXFLTABLE 0x1000
#define MDIO_PCS_STAT2_TXFLTABLE 0x2000


#define MDIO_PMD_TXDIS_GLOBAL 0x0001
#define MDIO_PMD_TXDIS_0 0x0002
#define MDIO_PMD_TXDIS_1 0x0004
#define MDIO_PMD_TXDIS_2 0x0008
#define MDIO_PMD_TXDIS_3 0x0010


#define MDIO_PMD_RXDET_GLOBAL 0x0001
#define MDIO_PMD_RXDET_0 0x0002
#define MDIO_PMD_RXDET_1 0x0004
#define MDIO_PMD_RXDET_2 0x0008
#define MDIO_PMD_RXDET_3 0x0010


#define MDIO_PMA_EXTABLE_10GCX4 0x0001
#define MDIO_PMA_EXTABLE_10GBLRM 0x0002
#define MDIO_PMA_EXTABLE_10GBT 0x0004
#define MDIO_PMA_EXTABLE_10GBKX4 0x0008
#define MDIO_PMA_EXTABLE_10GBKR 0x0010
#define MDIO_PMA_EXTABLE_1000BT 0x0020
#define MDIO_PMA_EXTABLE_1000BKX 0x0040
#define MDIO_PMA_EXTABLE_100BTX 0x0080
#define MDIO_PMA_EXTABLE_10BT 0x0100


#define MDIO_PHYXS_LNSTAT_SYNC0 0x0001
#define MDIO_PHYXS_LNSTAT_SYNC1 0x0002
#define MDIO_PHYXS_LNSTAT_SYNC2 0x0004
#define MDIO_PHYXS_LNSTAT_SYNC3 0x0008
#define MDIO_PHYXS_LNSTAT_ALIGN 0x1000


#define MDIO_PMA_10GBT_SWAPPOL_ABNX 0x0001
#define MDIO_PMA_10GBT_SWAPPOL_CDNX 0x0002
#define MDIO_PMA_10GBT_SWAPPOL_AREV 0x0100
#define MDIO_PMA_10GBT_SWAPPOL_BREV 0x0200
#define MDIO_PMA_10GBT_SWAPPOL_CREV 0x0400
#define MDIO_PMA_10GBT_SWAPPOL_DREV 0x0800


#define MDIO_PMA_10GBT_TXPWR_SHORT 0x0001



#define MDIO_PMA_10GBT_SNR_BIAS 0x8000
#define MDIO_PMA_10GBT_SNR_MAX 127


#define MDIO_PMA_10GBR_FECABLE_ABLE 0x0001
#define MDIO_PMA_10GBR_FECABLE_ERRABLE 0x0002


#define MDIO_PCS_10GBRT_STAT1_BLKLK 0x0001


#define MDIO_PCS_10GBRT_STAT2_ERR 0x00ff
#define MDIO_PCS_10GBRT_STAT2_BER 0x3f00


#define MDIO_AN_10GBT_CTRL_ADV10G 0x1000


#define MDIO_AN_10GBT_STAT_LPTRR 0x0200
#define MDIO_AN_10GBT_STAT_LPLTABLE 0x0400
#define MDIO_AN_10GBT_STAT_LP10G 0x0800
#define MDIO_AN_10GBT_STAT_REMOK 0x1000
#define MDIO_AN_10GBT_STAT_LOCOK 0x2000
#define MDIO_AN_10GBT_STAT_MS 0x4000
#define MDIO_AN_10GBT_STAT_MSFLT 0x8000


#define MDIO_AN_EEE_ADV_100TX 0x0002
#define MDIO_AN_EEE_ADV_1000T 0x0004


#define MDIO_PMA_LASI_RX_PHYXSLFLT 0x0001
#define MDIO_PMA_LASI_RX_PCSLFLT 0x0008
#define MDIO_PMA_LASI_RX_PMALFLT 0x0010
#define MDIO_PMA_LASI_RX_OPTICPOWERFLT 0x0020
#define MDIO_PMA_LASI_RX_WISLFLT 0x0200


#define MDIO_PMA_LASI_TX_PHYXSLFLT 0x0001
#define MDIO_PMA_LASI_TX_PCSLFLT 0x0008
#define MDIO_PMA_LASI_TX_PMALFLT 0x0010
#define MDIO_PMA_LASI_TX_LASERPOWERFLT 0x0080
#define MDIO_PMA_LASI_TX_LASERTEMPFLT 0x0100
#define MDIO_PMA_LASI_TX_LASERBICURRFLT 0x0200


#define MDIO_PMA_LASI_LSALARM 0x0001
#define MDIO_PMA_LASI_TXALARM 0x0002
#define MDIO_PMA_LASI_RXALARM 0x0004



#define MDIO_PHY_ID_C45 0x8000
#define MDIO_PHY_ID_PRTAD 0x03e0
#define MDIO_PHY_ID_DEVAD 0x001f
#define MDIO_PHY_ID_C45_MASK (MDIO_PHY_ID_C45 | MDIO_PHY_ID_PRTAD | MDIO_PHY_ID_DEVAD)


#define MDIO_PRTAD_NONE (-1)
#define MDIO_DEVAD_NONE (-1)
#define MDIO_EMULATE_C22 4
# 37 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/phy.h" 2

#define PHY_MAX_ADDR 32

#define PHY_BASIC_FEATURES (SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full | SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full | SUPPORTED_Autoneg | SUPPORTED_TP | SUPPORTED_MII)







#define PHY_GBIT_FEATURES (PHY_BASIC_FEATURES | SUPPORTED_1000baseT_Half | SUPPORTED_1000baseT_Full)



#define PHY_10G_FEATURES (PHY_GBIT_FEATURES | SUPPORTED_10000baseT_Full)


#define PHY_ANEG_TIMEOUT 40000


typedef enum {
 PHY_INTERFACE_MODE_MII,
 PHY_INTERFACE_MODE_GMII,
 PHY_INTERFACE_MODE_SGMII,
 PHY_INTERFACE_MODE_TBI,
 PHY_INTERFACE_MODE_RMII,
 PHY_INTERFACE_MODE_RGMII,
 PHY_INTERFACE_MODE_RGMII_ID,
 PHY_INTERFACE_MODE_RGMII_RXID,
 PHY_INTERFACE_MODE_RGMII_TXID,
 PHY_INTERFACE_MODE_RTBI,
 PHY_INTERFACE_MODE_XGMII,
 PHY_INTERFACE_MODE_NONE
} phy_interface_t;

static const char *phy_interface_strings[] = {
 [PHY_INTERFACE_MODE_MII] = "mii",
 [PHY_INTERFACE_MODE_GMII] = "gmii",
 [PHY_INTERFACE_MODE_SGMII] = "sgmii",
 [PHY_INTERFACE_MODE_TBI] = "tbi",
 [PHY_INTERFACE_MODE_RMII] = "rmii",
 [PHY_INTERFACE_MODE_RGMII] = "rgmii",
 [PHY_INTERFACE_MODE_RGMII_ID] = "rgmii-id",
 [PHY_INTERFACE_MODE_RGMII_RXID] = "rgmii-rxid",
 [PHY_INTERFACE_MODE_RGMII_TXID] = "rgmii-txid",
 [PHY_INTERFACE_MODE_RTBI] = "rtbi",
 [PHY_INTERFACE_MODE_XGMII] = "xgmii",
 [PHY_INTERFACE_MODE_NONE] = "",
};

static inline const char *phy_string_for_interface(phy_interface_t i)
{

 if (i > PHY_INTERFACE_MODE_NONE)
  i = PHY_INTERFACE_MODE_NONE;

 return phy_interface_strings[i];
}


struct phy_device;

#define MDIO_NAME_LEN 32

struct mii_dev {
 struct list_head link;
 char name[32];
 void *priv;
 int (*read)(struct mii_dev *bus, int addr, int devad, int reg);
 int (*write)(struct mii_dev *bus, int addr, int devad, int reg,
   uint16_t val);
 int (*reset)(struct mii_dev *bus);
 struct phy_device *phymap[32];
 uint32_t phy_mask;
};
# 124 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/phy.h"
struct phy_driver {
 char *name;
 unsigned int uid;
 unsigned int mask;
 unsigned int mmds;

 uint32_t features;



 int (*probe)(struct phy_device *phydev);



 int (*config)(struct phy_device *phydev);


 int (*startup)(struct phy_device *phydev);


 int (*shutdown)(struct phy_device *phydev);

 struct list_head list;
};

struct phy_device {


 struct mii_dev *bus;
 struct phy_driver *drv;
 void *priv;

 struct eth_device *dev;




 int speed;
 int duplex;


 int link;
 int port;
 phy_interface_t interface;

 uint32_t advertising;
 uint32_t supported;
 uint32_t mmds;

 int autoneg;
 int addr;
 int pause;
 int asym_pause;
 uint32_t phy_id;
 uint32_t flags;
};

static inline int phy_read(struct phy_device *phydev, int devad, int regnum)
{
 struct mii_dev *bus = phydev->bus;

 return bus->read(bus, phydev->addr, devad, regnum);
}

static inline int phy_write(struct phy_device *phydev, int devad, int regnum,
   uint16_t val)
{
 struct mii_dev *bus = phydev->bus;

 return bus->write(bus, phydev->addr, devad, regnum, val);
}
# 207 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/phy.h"
int phy_init(void);
int phy_reset(struct phy_device *phydev);
struct phy_device *phy_connect(struct mii_dev *bus, int addr,
    struct eth_device *dev,
    phy_interface_t interface);
struct phy_device *phy_connect_by_mask(struct mii_dev *bus, unsigned phy_mask,
  struct eth_device *dev, phy_interface_t interface);
int phy_startup(struct phy_device *phydev);
int phy_config(struct phy_device *phydev);
int phy_shutdown(struct phy_device *phydev);
int phy_register(struct phy_driver *drv);
int genphy_config_aneg(struct phy_device *phydev);
int genphy_restart_aneg(struct phy_device *phydev);
int genphy_update_link(struct phy_device *phydev);
int genphy_config(struct phy_device *phydev);
int genphy_startup(struct phy_device *phydev);
int genphy_shutdown(struct phy_device *phydev);
int gen10g_config(struct phy_device *phydev);
int gen10g_startup(struct phy_device *phydev);
int gen10g_shutdown(struct phy_device *phydev);
int gen10g_discover_mmds(struct phy_device *phydev);

int phy_atheros_init(void);
int phy_broadcom_init(void);
int phy_davicom_init(void);
int phy_lxt_init(void);
int phy_marvell_init(void);
int phy_micrel_init(void);
int phy_natsemi_init(void);
int phy_realtek_init(void);
int phy_smsc_init(void);
int phy_teranetics_init(void);
int phy_vitesse_init(void);


#define PHY_UID_TN2020 0x00a19410
# 43 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/miiphy.h" 2

struct legacy_mii_dev {
 int (*read)(const char *devname, unsigned char addr,
       unsigned char reg, unsigned short *value);
 int (*write)(const char *devname, unsigned char addr,
        unsigned char reg, unsigned short value);
};

int miiphy_read(const char *devname, unsigned char addr, unsigned char reg,
   unsigned short *value);
int miiphy_write(const char *devname, unsigned char addr, unsigned char reg,
    unsigned short value);
int miiphy_info(const char *devname, unsigned char addr, unsigned int *oui,
   unsigned char *model, unsigned char *rev);
int miiphy_reset(const char *devname, unsigned char addr);
int miiphy_speed(const char *devname, unsigned char addr);
int miiphy_duplex(const char *devname, unsigned char addr);
int miiphy_is_1000base_x(const char *devname, unsigned char addr);




void miiphy_init(void);

void miiphy_register(const char *devname,
        int (*read)(const char *devname, unsigned char addr,
       unsigned char reg, unsigned short *value),
        int (*write)(const char *devname, unsigned char addr,
        unsigned char reg, unsigned short value));

int miiphy_set_current_dev(const char *devname);
const char *miiphy_get_current_dev(void);
struct mii_dev *mdio_get_current_dev(void);
struct mii_dev *miiphy_get_dev_by_name(const char *devname);
struct phy_device *mdio_phydev_for_ethname(const char *devname);

void miiphy_listdev(void);

struct mii_dev *mdio_alloc(void);
int mdio_register(struct mii_dev *bus);
void mdio_list_devices(void);
# 114 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/miiphy.h"
#define AUTO 99
#define _1000BASET 1000
#define _100BASET 100
#define _10BASET 10
#define HALF 22
#define FULL 44


#define MII_MIPSCR 0x11


#define PHY_ANLPAR_PSB_802_3 0x0001
#define PHY_ANLPAR_PSB_802_9 0x0002


#define PHY_1000BTCR_1000FD 0x0200
#define PHY_1000BTCR_1000HD 0x0100


#define PHY_1000BTSR_MSCF 0x8000
#define PHY_1000BTSR_MSCR 0x4000
#define PHY_1000BTSR_LRS 0x2000
#define PHY_1000BTSR_RRS 0x1000
#define PHY_1000BTSR_1000FD 0x0800
#define PHY_1000BTSR_1000HD 0x0400


#define ESTATUS_1000XF 0x8000
#define ESTATUS_1000XH 0x4000
# 30 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.h" 1
# 37 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.h"
#define __FEC_MXC_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../enet.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../enet.h"
#define _IMX6_ENET_H_ 




#define NETIRQ_BABR (1UL << 30)
#define NETIRQ_BABT (1UL << 29)
#define NETIRQ_GRA (1UL << 28)
#define NETIRQ_TXF (1UL << 27)
#define NETIRQ_TXB (1UL << 26)
#define NETIRQ_RXF (1UL << 25)
#define NETIRQ_RXB (1UL << 24)
#define NETIRQ_MII (1UL << 23)
#define NETIRQ_EBERR (1UL << 22)
#define NETIRQ_LC (1UL << 21)
#define NETIRQ_RL (1UL << 20)
#define NETIRQ_UN (1UL << 19)
#define NETIRQ_PLR (1UL << 18)
#define NETIRQ_WAKEUP (1UL << 17)
#define NETIRQ_TS_AVAIL (1UL << 16)
#define NETIRQ_TS_TIMER (1UL << 15)

struct enet;


void enet_dump_regs(struct enet* enet);
void enet_clear_mib(struct enet* enet);
void enet_print_mib(struct enet* enet);

struct desc_data {
    uint32_t tx_phys;
    uint32_t rx_phys;
    uint32_t rx_bufsize;
};

struct enet * enet_init(struct desc_data desc_data, ps_io_ops_t *io_ops);


int enet_mdio_read(struct enet * enet, uint16_t phy, uint16_t reg);
int enet_mdio_write(struct enet * enet, uint16_t phy, uint16_t reg, uint16_t data);

void enet_enable(struct enet* enet);
int enet_enabled(struct enet* enet);
void enet_disable(struct enet* enet);

void enet_set_mac(struct enet* enet, unsigned char* mac);
void enet_get_mac(struct enet* enet, unsigned char* mac);

void enet_set_speed(struct enet* enet, int speed, int full_duplex);

uint32_t enet_clr_events(struct enet* enet, uint32_t clr_bits);

void enet_enable_events(struct enet* enet, uint32_t mask_bits);

uint32_t enet_get_events(struct enet* enet);

void enet_tx_enable(struct enet* enet);
int enet_tx_enabled(struct enet* enet);
void enet_rx_enable(struct enet* enet);
int enet_rx_enabled(struct enet* enet);

void enet_set_mdcclk(struct enet * enet, uint32_t fout);
uint32_t enet_get_mdcclk(struct enet *imx_eth);

void enet_print_state(struct enet * enet);
# 40 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.h" 2

#define PKTSIZE 1518
#define PKTSIZE_ALIGN 1536

struct eth_device {
 char name[16];
 unsigned char enetaddr[6];
 int iobase;
 int state;
 struct fec_priv *priv;
        int (*write_hwaddr)(struct eth_device *dev);
};

int fec_init(unsigned phy_mask, struct enet* enet);

#define FEC_RCNTRL_MAX_FL_SHIFT 16
#define FEC_RCNTRL_LOOP 0x00000001
#define FEC_RCNTRL_DRT 0x00000002
#define FEC_RCNTRL_MII_MODE 0x00000004
#define FEC_RCNTRL_PROM 0x00000008
#define FEC_RCNTRL_BC_REJ 0x00000010
#define FEC_RCNTRL_FCE 0x00000020
#define FEC_RCNTRL_RGMII 0x00000040
#define FEC_RCNTRL_RMII 0x00000100
#define FEC_RCNTRL_RMII_10T 0x00000200

#define FEC_TCNTRL_GTS 0x00000001
#define FEC_TCNTRL_HBC 0x00000002
#define FEC_TCNTRL_FDEN 0x00000004
#define FEC_TCNTRL_TFC_PAUSE 0x00000008
#define FEC_TCNTRL_RFC_PAUSE 0x00000010

#define FEC_ECNTRL_RESET 0x00000001
#define FEC_ECNTRL_ETHER_EN 0x00000002
#define FEC_ECNTRL_SPEED 0x00000020
#define FEC_ECNTRL_DBSWAP 0x00000100

#define FEC_X_WMRK_STRFWD 0x00000100





struct fec_priv {

 int phy_mask;
 struct phy_device *phydev;




};
# 31 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2


# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../io.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../io.h"
#define _ETHDRIVER_IMX6_IO_H_ 

#define __arch_getl(addr) *((volatile uint32_t*)(addr))
#define __arch_getw(addr) *((volatile uint16_t*)(addr))
#define __arch_getb(addr) *((volatile uint8_t*)(addr))

#define __arch_putl(val,addr) *((volatile uint32_t*)(addr)) = val
#define __arch_putw(val,addr) *((volatile uint16_t*)(addr)) = val
#define __arch_putb(val,addr) *((volatile uint8_t*)(addr)) = val
# 29 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../io.h"
#define __raw_writeb(v,a) __arch_putb(v,a)
#define __raw_writew(v,a) __arch_putw(v,a)
#define __raw_writel(v,a) __arch_putl(v,a)

#define __raw_readb(a) __arch_getb(a)
#define __raw_readw(a) __arch_getw(a)
#define __raw_readl(a) __arch_getl(a)





#define dmb() asm volatile("dmb" ::: "memory")
#define dsb() asm volatile("dsb" ::: "memory")
#define isb() asm volatile("isb" ::: "memory")
#define __iormb() dmb()
#define __iowmb() dmb()

#define writeb(v,c) ({ uint8_t __v = v; __iowmb(); __arch_putb(__v,c); __v; })
#define writew(v,c) ({ uint16_t __v = v; __iowmb(); __arch_putw(__v,c); __v; })
#define writel(v,c) ({ uint32_t __v = v; __iowmb(); __arch_putl(__v,c); __v; })

#define readb(c) ({ uint8_t __v = __arch_getb(c); __iormb(); __v; })
#define readw(c) ({ uint16_t __v = __arch_getw(c); __iormb(); __v; })
#define readl(c) ({ uint32_t __v = __arch_getl(c); __iormb(); __v; })
# 34 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/micrel.h" 1
# 9 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/micrel.h"
#define MII_KSZ9021_EXT_COMMON_CTRL 0x100
#define MII_KSZ9021_EXT_STRAP_STATUS 0x101
#define MII_KSZ9021_EXT_OP_STRAP_OVERRIDE 0x102
#define MII_KSZ9021_EXT_OP_STRAP_STATUS 0x103
#define MII_KSZ9021_EXT_RGMII_CLOCK_SKEW 0x104
#define MII_KSZ9021_EXT_RGMII_RX_DATA_SKEW 0x105
#define MII_KSZ9021_EXT_RGMII_TX_DATA_SKEW 0x106
#define MII_KSZ9021_EXT_ANALOG_TEST 0x107

struct phy_device;
int ksz9021_phy_extended_write(struct phy_device *phydev, int regnum, uint16_t val);
int ksz9021_phy_extended_read(struct phy_device *phydev, int regnum);

int ksz9021_startup(struct phy_device *phydev);
int ksz9021_config(struct phy_device *phydev);

void print_phyregs(struct phy_device *phydev);
# 36 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/errno.h" 1



#define _ERRNO_H 





# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/errno.h" 1


#define EPERM 1
#define ENOENT 2
#define ESRCH 3
#define EINTR 4
#define EIO 5
#define ENXIO 6
#define E2BIG 7
#define ENOEXEC 8
#define EBADF 9
#define ECHILD 10
#define EAGAIN 11
#define ENOMEM 12
#define EACCES 13
#define EFAULT 14
#define ENOTBLK 15
#define EBUSY 16
#define EEXIST 17
#define EXDEV 18
#define ENODEV 19
#define ENOTDIR 20
#define EISDIR 21
#define EINVAL 22
#define ENFILE 23
#define EMFILE 24
#define ENOTTY 25
#define ETXTBSY 26
#define EFBIG 27
#define ENOSPC 28
#define ESPIPE 29
#define EROFS 30
#define EMLINK 31
#define EPIPE 32
#define EDOM 33
#define ERANGE 34
#define EDEADLK 35
#define ENAMETOOLONG 36
#define ENOLCK 37
#define ENOSYS 38
#define ENOTEMPTY 39
#define ELOOP 40
#define EWOULDBLOCK EAGAIN
#define ENOMSG 42
#define EIDRM 43
#define ECHRNG 44
#define EL2NSYNC 45
#define EL3HLT 46
#define EL3RST 47
#define ELNRNG 48
#define EUNATCH 49
#define ENOCSI 50
#define EL2HLT 51
#define EBADE 52
#define EBADR 53
#define EXFULL 54
#define ENOANO 55
#define EBADRQC 56
#define EBADSLT 57
#define EDEADLOCK EDEADLK
#define EBFONT 59
#define ENOSTR 60
#define ENODATA 61
#define ETIME 62
#define ENOSR 63
#define ENONET 64
#define ENOPKG 65
#define EREMOTE 66
#define ENOLINK 67
#define EADV 68
#define ESRMNT 69
#define ECOMM 70
#define EPROTO 71
#define EMULTIHOP 72
#define EDOTDOT 73
#define EBADMSG 74
#define EOVERFLOW 75
#define ENOTUNIQ 76
#define EBADFD 77
#define EREMCHG 78
#define ELIBACC 79
#define ELIBBAD 80
#define ELIBSCN 81
#define ELIBMAX 82
#define ELIBEXEC 83
#define EILSEQ 84
#define ERESTART 85
#define ESTRPIPE 86
#define EUSERS 87
#define ENOTSOCK 88
#define EDESTADDRREQ 89
#define EMSGSIZE 90
#define EPROTOTYPE 91
#define ENOPROTOOPT 92
#define EPROTONOSUPPORT 93
#define ESOCKTNOSUPPORT 94
#define EOPNOTSUPP 95
#define ENOTSUP EOPNOTSUPP
#define EPFNOSUPPORT 96
#define EAFNOSUPPORT 97
#define EADDRINUSE 98
#define EADDRNOTAVAIL 99
#define ENETDOWN 100
#define ENETUNREACH 101
#define ENETRESET 102
#define ECONNABORTED 103
#define ECONNRESET 104
#define ENOBUFS 105
#define EISCONN 106
#define ENOTCONN 107
#define ESHUTDOWN 108
#define ETOOMANYREFS 109
#define ETIMEDOUT 110
#define ECONNREFUSED 111
#define EHOSTDOWN 112
#define EHOSTUNREACH 113
#define EALREADY 114
#define EINPROGRESS 115
#define ESTALE 116
#define EUCLEAN 117
#define ENOTNAM 118
#define ENAVAIL 119
#define EISNAM 120
#define EREMOTEIO 121
#define EDQUOT 122
#define ENOMEDIUM 123
#define EMEDIUMTYPE 124
#define ECANCELED 125
#define ENOKEY 126
#define EKEYEXPIRED 127
#define EKEYREVOKED 128
#define EKEYREJECTED 129
#define EOWNERDEAD 130
#define ENOTRECOVERABLE 131
#define ERFKILL 132
# 11 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/errno.h" 2


__attribute__((const))

int *__errno_location(void);
#define errno (*__errno_location())
# 37 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdlib.h" 1



#define _STDLIB_H 





#undef NULL



#define NULL ((void*)0)


#define __NEED_size_t 
#define __NEED_wchar_t 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1
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
# 38 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/string.h" 1



#define _STRING_H 





#undef NULL



#define NULL ((void*)0)


#define __NEED_size_t 



#define __NEED_locale_t 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1
# 399 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
typedef struct __locale * locale_t;
#define __DEFINED_locale_t 
# 25 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/string.h" 2

void *memcpy (void *, const void *, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *, const char *);
char *strncpy (char *, const char *, size_t);

char *strcat (char *, const char *);
char *strncat (char *, const char *, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *, const char *, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *, const char *);

size_t strlen (const char *);

char *strerror (int);
# 64 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/string.h"
char *strtok_r (char *, const char *, char **);
int strerror_r (int, char *, size_t);
char *stpcpy(char *, const char *);
char *stpncpy(char *, const char *, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *, const char *, size_t, locale_t);
# 39 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../ocotp_ctrl.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/../ocotp_ctrl.h"
#define _ETHDRIVER_IMX6_OCOTP_CONTROL_H_ 



struct ocotp;

struct ocotp *ocotp_init(ps_io_mapper_t *io_mapper);
void ocotp_free(struct ocotp *ocotp, ps_io_mapper_t *io_mapper);

int ocotp_get_mac(struct ocotp* ocotp, unsigned char *mac);
# 41 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c" 2




#define FEC_XFER_TIMEOUT 5000
# 56 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c"
#undef DEBUG


int fec_phy_read(struct mii_dev *bus, int phyAddr, int dev_addr, int regAddr)
{
 return enet_mdio_read((struct enet*)bus->priv, phyAddr, regAddr);
}

int fec_phy_write(struct mii_dev *bus, int phyAddr, int dev_addr, int regAddr,
  uint16_t data)
{
 return enet_mdio_write((struct enet*)bus->priv, phyAddr, regAddr, data);
}






void fec_halt(struct eth_device *dev)
{
# 89 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c"
    ((!"unimplemented") ? ((void)0) : (__assert_fail("!\"unimplemented\"", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/uboot/fec_mxc.c", 89, __func__)));

}
int fec_init(unsigned phy_mask, struct enet* enet)
{
 struct eth_device *edev;
    struct phy_device *phydev;
 struct mii_dev *bus;
 int ret = 0;
    struct eth_device _eth;

 edev = &_eth;
 memset(edev, 0, sizeof(*edev));

 edev->priv = (void*)enet;
 edev->write_hwaddr = ((void*)0);


 bus = mdio_alloc();
 if (!bus) {
  return -1;
 }
 bus->read = fec_phy_read;
 bus->write = fec_phy_write;
 bus->priv = enet;
 strcpy(bus->name, edev->name);
 ret = mdio_register(bus);
 if (ret) {
  free(bus);
  return -1;
 }


    phydev = phy_connect_by_mask(bus, phy_mask, edev, PHY_INTERFACE_MODE_RGMII);
    if (!phydev) {
        return -1;
    }


    ksz9021_phy_extended_write(phydev, 0x105, 0x0);

    ksz9021_phy_extended_write(phydev, 0x106, 0x0);

    ksz9021_phy_extended_write(phydev, 0x104, 0xf0f0);
    ksz9021_config(phydev);


 ret = ksz9021_startup(phydev);
 if (ret) {
  printf("Could not initialize PHY %s\n", phydev->dev->name);
  return ret;
 }

    printf("\n  * Link speed: %4i Mbps, ", phydev->speed);
    if(phydev->duplex == 0x01){
        enet_set_speed(enet, phydev->speed, 1);
        printf("full-duplex *\n");
    }else{
        enet_set_speed(enet, phydev->speed, 0);
        printf("half-duplex *\n");
    }

    udelay(100000);
    return 0;
}
