# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c"
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c"
# 11 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.h"
#define _IMX6_ENET_H_ 

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
# 15 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.h" 2
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
# 16 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.h" 2

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
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);
# 14 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/io.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/io.h"
#define _ETHDRIVER_IMX6_IO_H_ 

#define __arch_getl(addr) *((volatile uint32_t*)(addr))
#define __arch_getw(addr) *((volatile uint16_t*)(addr))
#define __arch_getb(addr) *((volatile uint8_t*)(addr))

#define __arch_putl(val,addr) *((volatile uint32_t*)(addr)) = val
#define __arch_putw(val,addr) *((volatile uint16_t*)(addr)) = val
#define __arch_putb(val,addr) *((volatile uint8_t*)(addr)) = val
# 29 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/io.h"
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
# 15 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/unimplemented.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/unimplemented.h"
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
# 17 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/../../debug.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/../../debug.h"
#define __DEBUG_H__ 
# 28 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/../../debug.h"
#define MAP_DEBUG(x) do{;}while(0)
# 39 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/../../debug.h"
#define PKT_DEBUG(x) do{;}while(0)





#define FEC_DEBUG(x) do{;}while(0)





#define BUF_DEBUG(x) do{;}while(0)





#define REG_DEBUG(x) do{;}while(0)





#define NET_DEBUG(x) do{;}while(0)





#define CLK_DEBUG(x) do{;} while(0)





#define COL_NET "\e[1;34m"
#define COL_IMP "\e[1;31m"
#define COL_FEC "\e[1;32m"
#define COL_RX "\e[42;30m"
#define COL_TX "\e[43;30m"
#define COL_ARP "\e[1;28m"
#define COL_PKT "\e[1;36m"
#define COL_DEF "\e[0;0m"

#define set_colour(x) printf(x);


#define cprintf(col,...) do { set_colour(col); dprintf(__VA_ARGS__); set_colour(COL_DEF); printf("\n"); }while(0)







#define dprintf(...) do { printf("%s %s %d: ", __FILE__, __func__, __LINE__); printf(__VA_ARGS__); }while(0)




#define UNIMPLEMENTED() do{ printf("unimplemented %s %s %d\n", __FILE__, __func__, __LINE__); while(1); } while(0)
# 18 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c" 2
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
# 19 "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c" 2

#define IMX6_ENET_PADDR 0x02188000
#define IMX6_ENET_SIZE 0x00004000

#define ENET_FREQ 125000000UL
#define MDC_FREQ 20000000UL

struct mib_regs {

    uint32_t rmon_t_drop;
    uint32_t rmon_t_packets;
    uint32_t rmon_t_bc_pkt;
    uint32_t rmon_t_mc_pkt;
    uint32_t rmon_t_crc_align;
    uint32_t rmon_t_undersize;
    uint32_t rmon_t_oversize;
    uint32_t rmon_t_frag;
    uint32_t rmon_t_jab;
    uint32_t rmon_t_col;
    uint32_t rmon_t_p64;
    uint32_t rmon_t_p65to127n;
    uint32_t rmon_t_p128to255n;
    uint32_t rmon_t_p256to511;
    uint32_t rmon_t_p512to1023;
    uint32_t rmon_t_p1024to2047;
    uint32_t rmon_t_p_gte2048;
    uint32_t rmon_t_octets;

    uint32_t ieee_t_drop;
    uint32_t ieee_t_frame_ok;
    uint32_t ieee_t_1col;
    uint32_t ieee_t_mcol;
    uint32_t ieee_t_def;
    uint32_t ieee_t_lcol;
    uint32_t ieee_t_excol;
    uint32_t ieee_t_macerr;
    uint32_t ieee_t_cserr;

    uint32_t ieee_t_sqe;
    uint32_t ieee_t_fdxfc;

    uint32_t ieee_t_octets_ok;
    uint32_t res0[3];
    uint32_t rmon_r_packets;
    uint32_t rmon_r_bc_pkt;
    uint32_t rmon_r_mc_pkt;
    uint32_t rmon_r_crc_align;
    uint32_t rmon_r_undersize;
    uint32_t rmon_r_oversize;
    uint32_t rmon_r_frag;
    uint32_t rmon_r_jab;
    uint32_t rmon_r_resvd_0;
    uint32_t rmon_r_p64;
    uint32_t rmon_r_p65to127;
    uint32_t rmon_r_p128to255;
    uint32_t rmon_r_p256to511;
    uint32_t rmon_r_p512to1023;
    uint32_t rmon_r_p1024to2047;
    uint32_t rmon_r_p_gte2048;
    uint32_t rmon_r_octets;



    uint32_t ieee_r_drop;
    uint32_t ieee_r_frame_ok;
    uint32_t ieee_r_crc;
    uint32_t ieee_r_align;

    uint32_t ieee_r_macerr;
    uint32_t ieee_r_fdxfc;

    uint32_t ieee_r_octets_ok;
    uint32_t res1[7];
};

struct enet_regs {

    uint32_t res0[1];
    uint32_t eir;
    uint32_t eimr;
    uint32_t res1[1];
    uint32_t rdar;
    uint32_t tdar;
    uint32_t res2[3];
    uint32_t ecr;
    uint32_t res3[6];
    uint32_t mmfr;
    uint32_t mscr;
    uint32_t res4[7];
    uint32_t mibc;
    uint32_t res5[7];
    uint32_t rcr;
    uint32_t res6[15];
    uint32_t tcr;
    uint32_t res7[7];
    uint32_t palr;
    uint32_t paur;
    uint32_t opd;
    uint32_t res8[10];
    uint32_t iaur;
    uint32_t ialr;
    uint32_t gaur;
    uint32_t galr;
    uint32_t res9[7];
    uint32_t tfwr;
    uint32_t res10[14];
    uint32_t rdsr;
    uint32_t tdsr;
    uint32_t mrbr;
    uint32_t res12[1];
    uint32_t rsfl;
    uint32_t rsem;
    uint32_t raem;
    uint32_t rafl;
    uint32_t tsem;
    uint32_t taem;
    uint32_t tafl;
    uint32_t tipg;
    uint32_t ftrl;
    uint32_t res13[3];
    uint32_t tacc;
    uint32_t racc;
    uint32_t res14[14];

    struct mib_regs mib;
    uint32_t res15[64];

    uint32_t atcr;
    uint32_t atvr;
    uint32_t atoff;
    uint32_t atper;
    uint32_t atcor;
    uint32_t atinc;
    uint32_t atstmp;
    uint32_t res16[121];


    uint32_t res17[1];
    uint32_t tgsr;
    uint32_t tcsr0;
    uint32_t tccr0;
    uint32_t tcsr1;
    uint32_t tccr1;
    uint32_t tcsr2;
    uint32_t tccr2;
    uint32_t tcsr3;
    uint32_t tccr3;
};

struct enet {
    void* dummy;
};

typedef volatile struct enet_regs enet_regs_t;


static inline enet_regs_t*
enet_get_regs(struct enet* enet){
    return (enet_regs_t*)enet;
}


#define ECR_DBSWP BIT(8)
#define ECR_STOPEN BIT(7)
#define ECR_DBGEN BIT(6)
#define ECR_SPEED BIT(5)
#define ECR_EN1588 BIT(4)
#define ECR_SLEEP BIT(3)
#define ECR_MAGICEN BIT(2)
#define ECR_ETHEREN BIT(1)
#define ECR_RESET BIT(0)


#define RCR_GRS BIT(31)
#define RCR_NLC BIT(30)
#define RCR_MAX_FL(x) (((x) & 0x3fff) << 16)
#define RCR_CFEN BIT(15)
#define RCR_CRCSTRIP BIT(14)
#define RCR_PAUFWD BIT(13)
#define RCR_PADEN BIT(12)
#define RCR_RMII_10T BIT( 9)
#define RCR_RMII_MODE BIT( 8)
#define RCR_RGMII_EN BIT( 6)
#define RCR_FCE BIT( 5)
#define RCR_BC_REJ BIT( 4)
#define RCR_PROM BIT( 3)
#define RCR_MII_MODE BIT( 2)
#define RCR_DRT BIT( 1)
#define RCR_LOOP BIT( 0)



#define TCR_CRCINS BIT( 9)
#define TCR_ADDINS BIT( 8)
#define TCR_ADDSEL(x) (((x) & 0x7) << 5)
#define TCR_RFCPAUSE BIT(4)
#define TCR_TFCPAUSE BIT(3)
#define TCR_FDEN BIT(2)
#define TCR_GTS BIT(0)


#define RACC_LINEDIS BIT(6)


#define TFWR_STRFWD BIT( 8)


#define MIBC_DIS BIT(31)
#define MIBC_IDLE BIT(30)
#define MIBC_CLEAR BIT(29)


#define RDAR_RDAR BIT(24)


#define TDAR_TDAR BIT(24)


#define FRAME_LEN 1518

#define PAUSE_FRAME_TYPE_FIELD 0x8808
#define PAUSE_OPCODE_FIELD 0x0001

#define PAUSE_DURATION 32
#define STRFWD_BYTES 128

#define TIPG 8

#define PHYOP_VALID (BIT(30) | BIT(17))
#define PHYOP_READ BIT(29)
#define PHYOP_WRITE BIT(28)
#define PHYOP_PHY_SHIFT 23
#define PHYOP_REG_SHIFT 18
#define PHYOP_DATA_SHIFT 0





static freq_t
_mdc_clk_get_freq(clk_t *clk){
    enet_regs_t *regs = (enet_regs_t*)clk->priv;
    uint32_t fin = clk_get_freq(clk->parent);
    uint32_t v = (regs->mscr >> 1) & 0x3f;
    uint32_t fout = fin / ((v + 1) * 2);
    return fout;
}

static freq_t
_mdc_clk_set_freq(clk_t* clk, freq_t hz){
    enet_regs_t *regs = (enet_regs_t*)clk->priv;
    uint32_t fin = clk_get_freq(clk->parent);
    uint32_t v;

    if(hz > 2500000UL){
        hz = 2500000UL;
    }else if(hz == 0){
        hz = 1;
    }

    v = fin / (2 * hz) - 1;

    if(v == -1){
        v = 0;
    }else if(v > 0x3f){
        v = 0x3f;
    }

    regs->mscr = v << 1;
    do{;} while(0)
                                                      ;
    return clk_get_freq(clk);
}

static void
_mdc_clk_recal(struct clock* clk){
    ((0) ? ((void)0) : (__assert_fail("0", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 295, __func__)));
}

static clk_t*
_mdc_clk_init(clk_t* clk){
    return clk;
}

static struct clock mdc_clk = {
        .id = CLK_CUSTOM,
        .name = "mdc_clk",
        .priv = ((void*)0),
        .req_freq = 2500000UL,
        .set_freq = &_mdc_clk_set_freq,
        .get_freq = &_mdc_clk_get_freq,
        .recal = &_mdc_clk_recal,
        .init = &_mdc_clk_init,
        .parent = ((void*)0),
        .sibling = ((void*)0),
        .child = ((void*)0),
    };


void
enet_set_speed(struct enet* enet, int speed, int full_duplex){
    enet_regs_t* regs = enet_get_regs(enet);
    uint32_t ecr = regs->ecr;
    uint32_t rcr = regs->rcr;

    rcr &= ~(1ul<<(8));
    rcr |= (1ul<<(6)) | (1ul<<(2));

    switch(speed){
    case 1000:
        ecr |= (1ul<<(5));
        rcr &= ~(1ul<<(9));
        break;
    case 100:
        ecr &= ~(1ul<<(5));
        rcr &= ~(1ul<<(9));
        break;
    case 10:
        ecr &= ~(1ul<<(5));
        rcr |= (1ul<<(9));
        break;
    default:
        printf("Invalid speed\n");
        ((0) ? ((void)0) : (__assert_fail("0", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 342, __func__)));
        return;
    }

    if(full_duplex){
        rcr &= ~(1ul<<(1));
    }else{
        rcr |= (1ul<<(1));
    }

    regs->ecr = ecr;
    regs->rcr = rcr;
}





int
enet_mdio_read(struct enet * enet, uint16_t phy, uint16_t reg){
    enet_regs_t* regs = enet_get_regs(enet);
    uint32_t v;
    ((!(phy & ~0x1f)) ? ((void)0) : (__assert_fail("!(phy & ~0x1f)", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 364, __func__)));
    ((!(reg & ~0x1f)) ? ((void)0) : (__assert_fail("!(reg & ~0x1f)", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 365, __func__)));
    ((regs->mscr) ? ((void)0) : (__assert_fail("regs->mscr", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 366, __func__)));
    ((!enet_clr_events(enet, (1UL << 23))) ? ((void)0) : (__assert_fail("!enet_clr_events(enet, NETIRQ_MII)", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 367, __func__)));
    v = phy << 23 | reg << 18;
    v |= (1ul<<(29)) | ((1ul<<(30)) | (1ul<<(17)));
    ({ uint32_t __v = v; asm volatile("dmb" ::: "memory"); *((volatile uint32_t*)(&regs->mmfr)) = __v; __v; });
    while(!enet_clr_events(enet, (1UL << 23))) asm volatile("dsb" ::: "memory");
    return ({ uint32_t __v = *((volatile uint32_t*)(&regs->mmfr)); asm volatile("dmb" ::: "memory"); __v; }) & 0xffff;
}

int
enet_mdio_write(struct enet * enet, uint16_t phy, uint16_t reg, uint16_t data){
    enet_regs_t* regs = enet_get_regs(enet);
    uint32_t v;
    ((!(phy & ~0x1f)) ? ((void)0) : (__assert_fail("!(phy & ~0x1f)", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 379, __func__)));
    ((!(reg & ~0x1f)) ? ((void)0) : (__assert_fail("!(reg & ~0x1f)", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 380, __func__)));
    ((regs->mscr) ? ((void)0) : (__assert_fail("regs->mscr", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 381, __func__)));
    ((!enet_clr_events(enet, (1UL << 23))) ? ((void)0) : (__assert_fail("!enet_clr_events(enet, NETIRQ_MII)", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 382, __func__)));
    v = phy << 23 | reg << 18 | data;
    v |= (1ul<<(28)) | ((1ul<<(30)) | (1ul<<(17)));
    regs->mmfr = v;
    while(!enet_clr_events(enet, (1UL << 23)));
    return 0;
}





void
enet_rx_enable(struct enet* enet){
    enet_get_regs(enet)->rdar = (1ul<<(24));
}

int
enet_rx_enabled(struct enet* enet){
    return enet_get_regs(enet)->rdar == (1ul<<(24));
}

int
enet_tx_enabled(struct enet* enet){
    return enet_get_regs(enet)->tdar == (1ul<<(24));
}


void
enet_tx_enable(struct enet* enet){
    enet_get_regs(enet)->tdar = (1ul<<(24));
}

void
enet_enable(struct enet * enet){
    enet_regs_t* regs = enet_get_regs(enet);
    regs->ecr |= (1ul<<(1));
}

int
enet_enabled(struct enet* enet){
    enet_regs_t* regs = enet_get_regs(enet);
    return (regs->ecr & (1ul<<(1))) != 0;
}

void
enet_disable(struct enet * enet){
    enet_regs_t* regs = enet_get_regs(enet);
    ((!"WARNING Descriptors will be reset") ? ((void)0) : (__assert_fail("!\"WARNING Descriptors will be reset\"", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 430, __func__)));
    regs->ecr &= ~(1ul<<(1));
}

void
enet_set_mac(struct enet * enet, unsigned char* mac){
    enet_regs_t* regs = enet_get_regs(enet);
    regs->palr = mac[0] << 24 | mac[1] << 16 | mac[2] << 8 | mac[3] << 0;
    regs->paur = mac[4] << 24 | mac[5] << 16 | 0x8808;
}

void
enet_get_mac(struct enet * enet, unsigned char* mac){
    enet_regs_t* regs = enet_get_regs(enet);
    uint32_t macl = regs->palr;
    uint32_t macu = regs->paur;


    mac[0] = macl >> 24;
    mac[1] = macl >> 16;
    mac[2] = macl >> 8;
    mac[3] = macl >> 0;
    mac[4] = macu >> 24;
    mac[5] = macu >> 16;
}

void
enet_enable_events(struct enet * enet, uint32_t mask){
    ((enet) ? ((void)0) : (__assert_fail("enet", "/home/mint/seL4/dhs-demo-feb-2018/libs/libethdrivers/src/plat/imx6/enet.c", 458, __func__)));
    enet_get_regs(enet)->eimr = mask;
}

uint32_t
enet_get_events(struct enet * enet){
    return enet_get_regs(enet)->eir;
}

uint32_t
enet_clr_events(struct enet * enet, uint32_t bits){
    enet_regs_t* regs = enet_get_regs(enet);
    uint32_t e = regs->eir & bits;

    regs->eir = e;
    return e;
}


struct enet *
enet_init(struct desc_data desc_data, ps_io_ops_t *io_ops) {
    enet_regs_t* regs;
    struct enet* ret;
    struct clock* enet_clk;


    regs = ps_io_map(&io_ops->io_mapper, (uintptr_t) 0x02188000, 0x00004000, 0, PS_MEM_NORMAL);
    if(regs == ((void*)0)){
        return ((void*)0);
    }
    ret = (struct enet*)regs;

    regs->ecr = (1ul<<(0));
    while(regs->ecr & (1ul<<(0)));
    regs->ecr |= (1ul<<(8));


    regs->eimr = 0x00000000;
    regs->eir = 0xffffffff;


    clock_sys_t *clk_sys = malloc(sizeof(clock_sys_t));
    clock_sys_init(io_ops, clk_sys);
    enet_clk = clk_get_clock(clk_sys, CLK_ENET);
    clk_set_freq(enet_clk, 125000000UL);

    mdc_clk.priv = (void*)enet_get_regs(ret);
    clk_register_child(enet_clk, &mdc_clk);
    clk_set_freq(&mdc_clk, 20000000UL);


    enet_clear_mib(ret);


    regs->iaur = 0;
    regs->ialr = 0;
    regs->gaur = 0;
    regs->galr = 0;


    enet_set_mac(ret, (unsigned char*)"\0\0\0\0\0\0");


    regs->opd = 0x0001 << 16;

    if(32 >= 0){
        regs->opd |= 32 << 0;
    }



    regs->tipg = 8;

    regs->tfwr = 0;

    if(128 > 0){
        regs->tfwr = 128 / 64;
        regs->tfwr |= (1ul<<(8));
    }



    regs->racc = (1ul<<(6));


    regs->tdsr = desc_data.tx_phys;
    regs->rdsr = desc_data.rx_phys;
    regs->mrbr = desc_data.rx_bufsize;


    regs->rcr = (((1518) & 0x3fff) << 16) | (1ul<<(6)) | (1ul<<(2));

    regs->tcr = (1ul<<(2));


    return ret;
}





static void
dump_regs(uint32_t* start, int size){
    int i, j;
    uint32_t *base = start;
    for(i = 0; i < size/sizeof(*start); ){
        printf("+0x%03x: ",((uint32_t)(start - base)) * 4);
        for(j = 0; j < 4; j++, i++, start++){
            printf("0x%08x ", *start);
        }
        printf("\n");
    }
}

void
enet_dump_regs(struct enet* enet){
    enet_regs_t* regs = enet_get_regs(enet);
    printf("\nEthernet regs\n");
    dump_regs((uint32_t*)regs, sizeof(*regs));
    printf("\n");
}

void enet_clear_mib(struct enet* enet){
    enet_regs_t* regs = enet_get_regs(enet);

    regs->mibc |= (1ul<<(31));
    while(!(regs->mibc & (1ul<<(30))));

    regs->mibc |= (1ul<<(29));
    while(!(regs->mibc & (1ul<<(30))));

    regs->mibc &= ~(1ul<<(29));
    regs->mibc &= ~(1ul<<(31));
}



void enet_print_mib(struct enet* enet){
    enet_regs_t* regs = enet_get_regs(enet);
    volatile struct mib_regs* mib = &regs->mib;
    regs->mibc |= (1ul<<(31));

    printf("Ethernet Counter regs\n");
    dump_regs((uint32_t*)mib, sizeof(*mib));
    printf("\n");

    printf("-----------------------------\n");
    printf("RX  Frames RX OK: %d/%d\n", mib->ieee_r_frame_ok,
                                       mib->rmon_r_packets);
    printf("RX FIFO overflow: %d\n", mib->ieee_r_macerr);
    printf("RX  pause frames: %d\n", mib->ieee_r_fdxfc);
    printf("-----------------------------\n");
    printf("TX  Frames TX OK: %d/%d\n", mib->ieee_t_frame_ok,
                                        mib->rmon_t_packets);
    printf("TX FIFO underrun: %d\n", mib->ieee_t_macerr);
    printf("TX  pause frames: %d\n", mib->ieee_t_fdxfc);
    printf("-----------------------------\n");
    printf("\n");
    regs->mibc &= ~(1ul<<(31));
}



void
enet_print_state(struct enet * enet){
    enet_regs_t* regs = enet_get_regs(enet);
    printf("Ethernet state: %s\n", ( enet_enabled(enet))? "Active" : "Inactive");
    printf("      TX state: %s\n", (enet_tx_enabled(enet))? "Active" : "Inactive");
    printf("      RX state: %s\n", (enet_rx_enabled(enet))? "Active" : "Inactive");
    printf("    TX control: 0x%08x\n", regs->tcr);
    printf("    RX control: 0x%08x\n", regs->rcr);
    printf("  RX desc base: 0x%08x (size: 0x%x)\n", regs->rdsr, regs->mrbr);
    printf("  TX desc base: 0x%08x\n", regs->tdsr);
    printf("Enabled events: 0x%08x\n", regs->eimr);
    printf("Pending events: 0x%08x\n", regs->eir);
    printf("         Speed: ????\n");
    printf("\n");
}
