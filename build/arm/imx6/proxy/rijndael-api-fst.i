# 1 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/build/arm/imx6/proxy//"
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c"
# 38 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);






#define UNUSED_NDEBUG(x) ((void)(x))
# 39 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdlib.h" 1



#define _STDLIB_H 





#undef NULL



#define NULL ((void*)0)


#define __NEED_size_t 
#define __NEED_wchar_t 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h" 1



typedef unsigned size_t;
#define __DEFINED_size_t 
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
# 40 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c" 2
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
# 41 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-alg-fst.h" 1
# 27 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-alg-fst.h"
#define __RIJNDAEL_ALG_FST_H 

#define MAXKC (256/32)
#define MAXKB (256/8)
#define MAXNR 14

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

int rijndaelKeySetupEnc(u32 rk[ ], const u8 cipherKey[], int keyBits);
int rijndaelKeySetupDec(u32 rk[ ], const u8 cipherKey[], int keyBits);
void rijndaelEncrypt(const u32 rk[ ], int Nr, const u8 pt[16], u8 ct[16]);
void rijndaelDecrypt(const u32 rk[ ], int Nr, const u8 ct[16], u8 pt[16]);
# 43 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.h" 1
# 39 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.h"
#define __RIJNDAEL_API_FST_H 

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
# 42 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.h" 2



#define DIR_ENCRYPT 0
#define DIR_DECRYPT 1
#define MODE_ECB 1
#define MODE_CBC 2
#define MODE_CFB1 3
#define TRUE 1
#define FALSE 0
#define BITSPERBLOCK 128


#define BAD_KEY_DIR -1
#define BAD_KEY_MAT -2
#define BAD_KEY_INSTANCE -3
#define BAD_CIPHER_MODE -4
#define BAD_CIPHER_STATE -5
#define BAD_BLOCK_LENGTH -6
#define BAD_CIPHER_INSTANCE -7
#define BAD_DATA -8
#define BAD_OTHER -9


#define MAX_KEY_SIZE 64
#define MAX_IV_SIZE 16



typedef unsigned char BYTE;


typedef struct {
    BYTE direction;
    int keyLen;
    char keyMaterial[64 +1];
 int Nr;
 u32 rk[4*(14 + 1)];
 u32 ek[4*(14 + 1)];
} keyInstance;


typedef struct {
    BYTE mode;
    BYTE IV[16];
} cipherInstance;



int makeKey(keyInstance *key, BYTE direction, int keyLen, char *keyMaterial);

int cipherInit(cipherInstance *cipher, BYTE mode, char *IV);

int blockEncrypt(cipherInstance *cipher, keyInstance *key,
        BYTE *input, int inputLen, BYTE *outBuffer);

int padEncrypt(cipherInstance *cipher, keyInstance *key,
  BYTE *input, int inputOctets, BYTE *outBuffer);

int blockDecrypt(cipherInstance *cipher, keyInstance *key,
        BYTE *input, int inputLen, BYTE *outBuffer);

int padDecrypt(cipherInstance *cipher, keyInstance *key,
  BYTE *input, int inputOctets, BYTE *outBuffer);
# 44 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c" 2

int makeKey(keyInstance *key, BYTE direction, int keyLen, char *keyMaterial) {
 int i;
 char *keyMat;
 u8 cipherKey[(256/8)];

 if (key == ((void*)0)) {
  return -3;
 }

 if ((direction == 0) || (direction == 1)) {
  key->direction = direction;
 } else {
  return -1;
 }

 if ((keyLen == 128) || (keyLen == 192) || (keyLen == 256)) {
  key->keyLen = keyLen;
 } else {
  return -2;
 }

 if (keyMaterial != ((void*)0)) {
  strncpy(key->keyMaterial, keyMaterial, keyLen/4);
 }


 keyMat = key->keyMaterial;
  for (i = 0; i < key->keyLen/8; i++) {
  int t, v;

  t = *keyMat++;
  if ((t >= '0') && (t <= '9')) v = (t - '0') << 4;
  else if ((t >= 'a') && (t <= 'f')) v = (t - 'a' + 10) << 4;
  else if ((t >= 'A') && (t <= 'F')) v = (t - 'A' + 10) << 4;
  else return -2;

  t = *keyMat++;
  if ((t >= '0') && (t <= '9')) v ^= (t - '0');
  else if ((t >= 'a') && (t <= 'f')) v ^= (t - 'a' + 10);
  else if ((t >= 'A') && (t <= 'F')) v ^= (t - 'A' + 10);
  else return -2;

  cipherKey[i] = (u8)v;
 }
 if (direction == 0) {
  key->Nr = rijndaelKeySetupEnc(key->rk, cipherKey, keyLen);
 } else {
  key->Nr = rijndaelKeySetupDec(key->rk, cipherKey, keyLen);
 }
 rijndaelKeySetupEnc(key->ek, cipherKey, keyLen);
 return 1;
}

int cipherInit(cipherInstance *cipher, BYTE mode, char *IV) {
 if ((mode == 1) || (mode == 2) || (mode == 3)) {
  cipher->mode = mode;
 } else {
  return -4;
 }
 if (IV != ((void*)0)) {
  int i;
   for (i = 0; i < 16; i++) {
   int t, j;

   t = IV[2*i];
   if ((t >= '0') && (t <= '9')) j = (t - '0') << 4;
   else if ((t >= 'a') && (t <= 'f')) j = (t - 'a' + 10) << 4;
   else if ((t >= 'A') && (t <= 'F')) j = (t - 'A' + 10) << 4;
   else return -7;

   t = IV[2*i+1];
   if ((t >= '0') && (t <= '9')) j ^= (t - '0');
   else if ((t >= 'a') && (t <= 'f')) j ^= (t - 'a' + 10);
   else if ((t >= 'A') && (t <= 'F')) j ^= (t - 'A' + 10);
   else return -7;

   cipher->IV[i] = (u8)j;
  }
 } else {
  memset(cipher->IV, 0, 16);
 }
 return 1;
}

int blockEncrypt(cipherInstance *cipher, keyInstance *key,
  BYTE *input, int inputLen, BYTE *outBuffer) {
 int i, k, t, numBlocks;
 u8 block[16], *iv;

 if (cipher == ((void*)0) ||
  key == ((void*)0) ||
  key->direction == 1) {
  return -5;
 }
 if (input == ((void*)0) || inputLen <= 0) {
  return 0;
 }

 numBlocks = inputLen/128;

 switch (cipher->mode) {
 case 1:
  for (i = numBlocks; i > 0; i--) {
   rijndaelEncrypt(key->rk, key->Nr, input, outBuffer);
   input += 16;
   outBuffer += 16;
  }
  break;

 case 2:
  iv = cipher->IV;
  for (i = numBlocks; i > 0; i--) {
   ((u32*)block)[0] = ((u32*)input)[0] ^ ((u32*)iv)[0];
   ((u32*)block)[1] = ((u32*)input)[1] ^ ((u32*)iv)[1];
   ((u32*)block)[2] = ((u32*)input)[2] ^ ((u32*)iv)[2];
   ((u32*)block)[3] = ((u32*)input)[3] ^ ((u32*)iv)[3];
   rijndaelEncrypt(key->rk, key->Nr, block, outBuffer);
   iv = outBuffer;
   input += 16;
   outBuffer += 16;
  }
  break;

    case 3:
  iv = cipher->IV;
        for (i = numBlocks; i > 0; i--) {

   memcpy(outBuffer, input, 16);
            for (k = 0; k < 128; k++) {
    rijndaelEncrypt(key->ek, key->Nr, iv, block);
                outBuffer[k >> 3] ^= (block[0] & 0x80U) >> (k & 7);
                for (t = 0; t < 15; t++) {
                 iv[t] = (iv[t] << 1) | (iv[t + 1] >> 7);
                }
                iv[15] = (iv[15] << 1) | ((outBuffer[k >> 3] >> (7 - (k & 7))) & 1);
            }
            outBuffer += 16;
            input += 16;
        }
        break;

 default:
  return -5;
 }

 return 128*numBlocks;
}
# 202 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c"
int padEncrypt(cipherInstance *cipher, keyInstance *key,
  BYTE *input, int inputOctets, BYTE *outBuffer) {
 int i, numBlocks, padLen;
 u8 block[16], *iv;

 if (cipher == ((void*)0) ||
  key == ((void*)0) ||
  key->direction == 1) {
  return -5;
 }
 if (input == ((void*)0) || inputOctets <= 0) {
  return 0;
 }

 numBlocks = inputOctets/16;

 switch (cipher->mode) {
 case 1:
  for (i = numBlocks; i > 0; i--) {
   rijndaelEncrypt(key->rk, key->Nr, input, outBuffer);
   input += 16;
   outBuffer += 16;
  }
  padLen = 16 - (inputOctets - 16*numBlocks);
  ((padLen > 0 && padLen <= 16) ? ((void)0) : (__assert_fail("padLen > 0 && padLen <= 16", "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c", 226, __func__)));
  memcpy(block, input, 16 - padLen);
  memset(block + 16 - padLen, padLen, padLen);
  rijndaelEncrypt(key->rk, key->Nr, block, outBuffer);
  break;

 case 2:
  iv = cipher->IV;
  for (i = numBlocks; i > 0; i--) {
   ((u32*)block)[0] = ((u32*)input)[0] ^ ((u32*)iv)[0];
   ((u32*)block)[1] = ((u32*)input)[1] ^ ((u32*)iv)[1];
   ((u32*)block)[2] = ((u32*)input)[2] ^ ((u32*)iv)[2];
   ((u32*)block)[3] = ((u32*)input)[3] ^ ((u32*)iv)[3];
   rijndaelEncrypt(key->rk, key->Nr, block, outBuffer);
   iv = outBuffer;
   input += 16;
   outBuffer += 16;
  }
  padLen = 16 - (inputOctets - 16*numBlocks);
  ((padLen > 0 && padLen <= 16) ? ((void)0) : (__assert_fail("padLen > 0 && padLen <= 16", "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/rijndael-api-fst.c", 245, __func__)));
  for (i = 0; i < 16 - padLen; i++) {
   block[i] = input[i] ^ iv[i];
  }
  for (i = 16 - padLen; i < 16; i++) {
   block[i] = (BYTE)padLen ^ iv[i];
  }
  rijndaelEncrypt(key->rk, key->Nr, block, outBuffer);
  break;

 default:
  return -5;
 }

 return 16*(numBlocks + 1);
}

int blockDecrypt(cipherInstance *cipher, keyInstance *key,
  BYTE *input, int inputLen, BYTE *outBuffer) {
 int i, k, t, numBlocks;
 u8 block[16], *iv;

 if (cipher == ((void*)0) ||
  key == ((void*)0) ||
  cipher->mode != 3 && key->direction == 0) {
  return -5;
 }
 if (input == ((void*)0) || inputLen <= 0) {
  return 0;
 }

 numBlocks = inputLen/128;

 switch (cipher->mode) {
 case 1:
  for (i = numBlocks; i > 0; i--) {
   rijndaelDecrypt(key->rk, key->Nr, input, outBuffer);
   input += 16;
   outBuffer += 16;
  }
  break;

 case 2:
  iv = cipher->IV;
  for (i = numBlocks; i > 0; i--) {
   rijndaelDecrypt(key->rk, key->Nr, input, block);
   ((u32*)block)[0] ^= ((u32*)iv)[0];
   ((u32*)block)[1] ^= ((u32*)iv)[1];
   ((u32*)block)[2] ^= ((u32*)iv)[2];
   ((u32*)block)[3] ^= ((u32*)iv)[3];
   memcpy(cipher->IV, input, 16);
   memcpy(outBuffer, block, 16);
   input += 16;
   outBuffer += 16;
  }
  break;

    case 3:
  iv = cipher->IV;
        for (i = numBlocks; i > 0; i--) {
   memcpy(outBuffer, input, 16);

            for (k = 0; k < 128; k++) {
    rijndaelEncrypt(key->ek, key->Nr, iv, block);
                for (t = 0; t < 15; t++) {
                 iv[t] = (iv[t] << 1) | (iv[t + 1] >> 7);
                }
                iv[15] = (iv[15] << 1) | ((input[k >> 3] >> (7 - (k & 7))) & 1);
                outBuffer[k >> 3] ^= (block[0] & 0x80U) >> (k & 7);
            }
            outBuffer += 16;
            input += 16;
        }
        break;

 default:
  return -5;
 }

 return 128*numBlocks;
}

int padDecrypt(cipherInstance *cipher, keyInstance *key,
  BYTE *input, int inputOctets, BYTE *outBuffer) {
 int i, numBlocks, padLen;
 u8 block[16];

 if (cipher == ((void*)0) ||
  key == ((void*)0) ||
  key->direction == 0) {
  return -5;
 }
 if (input == ((void*)0) || inputOctets <= 0) {
  return 0;
 }
 if (inputOctets % 16 != 0) {
  return -8;
 }

 numBlocks = inputOctets/16;

 switch (cipher->mode) {
 case 1:

  for (i = numBlocks - 1; i > 0; i--) {
   rijndaelDecrypt(key->rk, key->Nr, input, outBuffer);
   input += 16;
   outBuffer += 16;
  }

  rijndaelDecrypt(key->rk, key->Nr, input, block);
  padLen = block[15];
  if (padLen >= 16) {
   return -8;
  }
  for (i = 16 - padLen; i < 16; i++) {
   if (block[i] != padLen) {
    return -8;
   }
  }
  memcpy(outBuffer, block, 16 - padLen);
  break;

 case 2:

  for (i = numBlocks - 1; i > 0; i--) {
   rijndaelDecrypt(key->rk, key->Nr, input, block);
   ((u32*)block)[0] ^= ((u32*)cipher->IV)[0];
   ((u32*)block)[1] ^= ((u32*)cipher->IV)[1];
   ((u32*)block)[2] ^= ((u32*)cipher->IV)[2];
   ((u32*)block)[3] ^= ((u32*)cipher->IV)[3];
   memcpy(cipher->IV, input, 16);
   memcpy(outBuffer, block, 16);
   input += 16;
   outBuffer += 16;
  }

  rijndaelDecrypt(key->rk, key->Nr, input, block);
  ((u32*)block)[0] ^= ((u32*)cipher->IV)[0];
  ((u32*)block)[1] ^= ((u32*)cipher->IV)[1];
  ((u32*)block)[2] ^= ((u32*)cipher->IV)[2];
  ((u32*)block)[3] ^= ((u32*)cipher->IV)[3];
  padLen = block[15];
  if (padLen <= 0 || padLen > 16) {
   return -8;
  }
  for (i = 16 - padLen; i < 16; i++) {
   if (block[i] != padLen) {
    return -8;
   }
  }
  memcpy(outBuffer, block, 16 - padLen);
  break;

 default:
  return -5;
 }

 return 16*numBlocks - padLen;
}
