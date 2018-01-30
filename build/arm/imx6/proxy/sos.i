# 1 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c"
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c"
# 29 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h" 1


#undef assert




#define assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __FILE__, __LINE__, __func__)))






void __assert_fail (const char *, const char *, int, const char *);






#define UNUSED_NDEBUG(x) ((void)(x))
# 30 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c" 2
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
# 31 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c" 2
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
# 32 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c" 2
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
# 33 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c" 2
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
# 34 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h"
#define __LIBSEL4_SEL4_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h"
#define __LIBSEL4_TYPES_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/simple_types.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/simple_types.h"
#define __LIBSEL4_SIMPLE_TYPES_H 


# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/simple_types.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/simple_types.h"
#define __LIBSEL4_ARCH_SIMPLE_TYPES_H_ 

typedef signed char seL4_Int8;
typedef signed short seL4_Int16;
typedef signed int seL4_Int32;
typedef signed long long seL4_Int64;

typedef unsigned char seL4_Uint8;
typedef unsigned short seL4_Uint16;
typedef unsigned int seL4_Uint32;
typedef unsigned long long seL4_Uint64;
# 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/simple_types.h" 2


#define seL4_True 1
#define seL4_False 0
typedef seL4_Int8 seL4_Bool;





#define seL4_Null ((void*)0)
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/macros.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/macros.h"
#define __LIBSEL4_MACROS_H 






#define SEL4_FORCE_LONG_ENUM(type) _enum_pad_ ## type = (1U << ((sizeof(int)*8) - 1)) - 1



#define CONST __attribute__((__const__))



#define PURE __attribute__((__pure__))
# 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/types.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/types.h"
#define __LIBSEL4_ARCH_TYPES_H 



#define seL4_WordBits 32

#define seL4_PageBits 12
#define seL4_SlotBits 4
#define seL4_TCBBits 9
#define seL4_EndpointBits 4
#define seL4_PageTableBits 10
#define seL4_PageDirBits 14

#define seL4_Frame_Args 4
#define seL4_Frame_MRs 7
#define seL4_Frame_HasNPC 0

typedef seL4_Uint32 seL4_Word;
typedef seL4_Word seL4_CPtr;

typedef seL4_CPtr seL4_ARM_Page;
typedef seL4_CPtr seL4_ARM_PageTable;
typedef seL4_CPtr seL4_ARM_PageDirectory;

typedef struct seL4_UserContext_ {

    seL4_Word pc, sp, cpsr, r0, r1, r8, r9, r10, r11, r12;

    seL4_Word r2, r3, r4, r5, r6, r7, r14;
} seL4_UserContext;

typedef enum {
    seL4_ARM_PageCacheable = 0x01,
    seL4_ARM_ParityEnabled = 0x02,
    seL4_ARM_Default_VMAttributes = 0x03,
    seL4_ARM_ExecuteNever = 0x04,

    _enum_pad_seL4_ARM_VMAttributes = (1U << ((sizeof(int)*8) - 1)) - 1,
} seL4_ARM_VMAttributes;
# 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h" 1

#define _HOME_MINT_SEL4_DHS_DEMO_FEB_2018_BUILD_ARM_IMX6_LIBSEL4_INCLUDE_SEL4_TYPES_GEN_H 

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
# 5 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/debug_assert.h" 1
# 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/debug_assert.h"
#define __LIBSEL4_DEBUG_ASSERT_H 
# 27 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/debug_assert.h"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/assert.h" 1
# 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/assert.h"
#define __LIBSEL4_ASSERT_H 




void __assert_fail(const char* str, const char* file, int line, const char* function);





#define seL4_Fail(s) __assert_fail(s, __FILE__, __LINE__, __func__)





#define seL4_Assert(expr) do { if (!(expr)) { __assert_fail(#expr, __FILE__, __LINE__, __FUNCTION__); } } while(0)
# 49 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/assert.h"
#define seL4_CompileTimeAssert(expr) extern char __seL4_CompileTimeAssertFailed_ ## __COUNTER__[__builtin_constant_p(expr) ? ((expr) ? 1 : -1) : -1] __attribute__((unused))
# 28 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/debug_assert.h" 2




#define seL4_DebugAssert(expr) seL4_Assert(expr)
# 7 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h" 2
struct seL4_MessageInfo {
    seL4_Uint32 words[1];
};
typedef struct seL4_MessageInfo seL4_MessageInfo_t;

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_new(seL4_Uint32 label, seL4_Uint32 capsUnwrapped, seL4_Uint32 extraCaps, seL4_Uint32 length) {
    seL4_MessageInfo_t seL4_MessageInfo;

    seL4_MessageInfo.words[0] = 0;


    do { if (!((label & ~0xffffful) == ((0 && (label & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(label & ~0xffffful) == ((0 && (label & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 19, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] |= (label & 0xffffful) << 12;

    do { if (!((capsUnwrapped & ~0x7ul) == ((0 && (capsUnwrapped & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(capsUnwrapped & ~0x7ul) == ((0 && (capsUnwrapped & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 22, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] |= (capsUnwrapped & 0x7ul) << 9;

    do { if (!((extraCaps & ~0x3ul) == ((0 && (extraCaps & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(extraCaps & ~0x3ul) == ((0 && (extraCaps & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 25, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] |= (extraCaps & 0x3ul) << 7;

    do { if (!((length & ~0x7ful) == ((0 && (length & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(length & ~0x7ful) == ((0 && (length & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 28, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] |= (length & 0x7ful) << 0;

    return seL4_MessageInfo;
}

static inline void
seL4_MessageInfo_ptr_new(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 label, seL4_Uint32 capsUnwrapped, seL4_Uint32 extraCaps, seL4_Uint32 length) {
    seL4_MessageInfo_ptr->words[0] = 0;


    do { if (!((label & ~0xffffful) == ((0 && (label & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(label & ~0xffffful) == ((0 && (label & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 39, __FUNCTION__); } } while(0);
    seL4_MessageInfo_ptr->words[0] |= (label & 0xffffful) << 12;

    do { if (!((capsUnwrapped & ~0x7ul) == ((0 && (capsUnwrapped & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(capsUnwrapped & ~0x7ul) == ((0 && (capsUnwrapped & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 42, __FUNCTION__); } } while(0);
    seL4_MessageInfo_ptr->words[0] |= (capsUnwrapped & 0x7ul) << 9;

    do { if (!((extraCaps & ~0x3ul) == ((0 && (extraCaps & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(extraCaps & ~0x3ul) == ((0 && (extraCaps & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 45, __FUNCTION__); } } while(0);
    seL4_MessageInfo_ptr->words[0] |= (extraCaps & 0x3ul) << 7;

    do { if (!((length & ~0x7ful) == ((0 && (length & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(length & ~0x7ful) == ((0 && (length & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 48, __FUNCTION__); } } while(0);
    seL4_MessageInfo_ptr->words[0] |= (length & 0x7ful) << 0;
}

static inline seL4_Uint32 __attribute__((__const__))
seL4_MessageInfo_get_label(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0xfffff000ul) >> 12;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_label(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {

    do { if (!(((~0xfffff000 >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xfffff000 >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 66, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0xfffff000ul;
    seL4_MessageInfo.words[0] |= (v << 12) & 0xfffff000ul;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0xfffff000ul) >> 12;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {

    do { if (!(((~0xfffff000 >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xfffff000 >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 86, __FUNCTION__); } } while(0);
    seL4_MessageInfo_ptr->words[0] &= ~0xfffff000ul;
    seL4_MessageInfo_ptr->words[0] |= (v << 12) & 0xfffff000;
}

static inline seL4_Uint32 __attribute__((__const__))
seL4_MessageInfo_get_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0xe00ul) >> 9;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {

    do { if (!(((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 105, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0xe00ul;
    seL4_MessageInfo.words[0] |= (v << 9) & 0xe00ul;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0xe00ul) >> 9;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {

    do { if (!(((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 125, __FUNCTION__); } } while(0);
    seL4_MessageInfo_ptr->words[0] &= ~0xe00ul;
    seL4_MessageInfo_ptr->words[0] |= (v << 9) & 0xe00;
}

static inline seL4_Uint32 __attribute__((__const__))
seL4_MessageInfo_get_extraCaps(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0x180ul) >> 7;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_extraCaps(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {

    do { if (!(((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 144, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0x180ul;
    seL4_MessageInfo.words[0] |= (v << 7) & 0x180ul;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0x180ul) >> 7;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {

    do { if (!(((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 164, __FUNCTION__); } } while(0);
    seL4_MessageInfo_ptr->words[0] &= ~0x180ul;
    seL4_MessageInfo_ptr->words[0] |= (v << 7) & 0x180;
}

static inline seL4_Uint32 __attribute__((__const__))
seL4_MessageInfo_get_length(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo.words[0] & 0x7ful) >> 0;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_length(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint32 v) {

    do { if (!(((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 183, __FUNCTION__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0x7ful;
    seL4_MessageInfo.words[0] |= (v << 0) & 0x7ful;
    return seL4_MessageInfo;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint32 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0x7ful) >> 0;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint32 v) {

    do { if (!(((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 203, __FUNCTION__); } } while(0);
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

static inline seL4_Uint32 __attribute__((__const__))
seL4_CapData_get_CapDataType(seL4_CapData_t seL4_CapData) {
    return (seL4_CapData.words[0] >> 31) & 0x1ul;
}

static inline int __attribute__((__const__))
seL4_CapData_CapDataType_equals(seL4_CapData_t seL4_CapData, seL4_Uint32 seL4_CapData_type_tag) {
    return ((seL4_CapData.words[0] >> 31) & 0x1ul) == seL4_CapData_type_tag;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_CapData_ptr_get_CapDataType(seL4_CapData_t *seL4_CapData_ptr) {
    return (seL4_CapData_ptr->words[0] >> 31) & 0x1ul;
}

static inline seL4_CapData_t __attribute__((__const__))
seL4_CapData_Badge_new(seL4_Uint32 Badge) {
    seL4_CapData_t seL4_CapData;

    seL4_CapData.words[0] = 0;


    do { if (!(((seL4_Uint32)seL4_CapData_Badge & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Badge & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("((seL4_Uint32)seL4_CapData_Badge & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Badge & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 241, __FUNCTION__); } } while(0);
    seL4_CapData.words[0] |= ((seL4_Uint32)seL4_CapData_Badge & 0x1ul) << 31;

    do { if (!((Badge & ~0xffffffful) == ((0 && (Badge & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(Badge & ~0xffffffful) == ((0 && (Badge & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 244, __FUNCTION__); } } while(0);
    seL4_CapData.words[0] |= (Badge & 0xffffffful) << 0;

    return seL4_CapData;
}

static inline void
seL4_CapData_Badge_ptr_new(seL4_CapData_t *seL4_CapData_ptr, seL4_Uint32 Badge) {
    seL4_CapData_ptr->words[0] = 0;


    do { if (!(((seL4_Uint32)seL4_CapData_Badge & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Badge & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("((seL4_Uint32)seL4_CapData_Badge & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Badge & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 255, __FUNCTION__); } } while(0);
    seL4_CapData_ptr->words[0] |= ((seL4_Uint32)seL4_CapData_Badge & 0x1ul) << 31;

    do { if (!((Badge & ~0xffffffful) == ((0 && (Badge & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(Badge & ~0xffffffful) == ((0 && (Badge & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 258, __FUNCTION__); } } while(0);
    seL4_CapData_ptr->words[0] |= (Badge & 0xffffffful) << 0;
}

static inline seL4_Uint32 __attribute__((__const__))
seL4_CapData_Badge_get_Badge(seL4_CapData_t seL4_CapData) {
    seL4_Uint32 ret;
    do { if (!(((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Badge)) { __assert_fail("((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Badge",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 265 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             266
# 265 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    ret = (seL4_CapData.words[0] & 0xffffffful) >> 0;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapData_t __attribute__((__const__))
seL4_CapData_Badge_set_Badge(seL4_CapData_t seL4_CapData, seL4_Uint32 v) {
    do { if (!(((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Badge)) { __assert_fail("((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Badge",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 278 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             279
# 278 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    do { if (!(((~0xffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 281, __FUNCTION__); } } while(0);

    seL4_CapData.words[0] &= ~0xffffffful;
    seL4_CapData.words[0] |= (v << 0) & 0xffffffful;
    return seL4_CapData;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_CapData_Badge_ptr_get_Badge(seL4_CapData_t *seL4_CapData_ptr) {
    seL4_Uint32 ret;
    do { if (!(((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Badge)) { __assert_fail("((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Badge",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 291 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             292
# 291 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    ret = (seL4_CapData_ptr->words[0] & 0xffffffful) >> 0;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapData_Badge_ptr_set_Badge(seL4_CapData_t *seL4_CapData_ptr,
                                      seL4_Uint32 v) {
    do { if (!(((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Badge)) { __assert_fail("((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Badge",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 305 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             306
# 305 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;


    do { if (!(((~0xffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 309, __FUNCTION__); } } while(0);

    seL4_CapData_ptr->words[0] &= ~0xffffffful;
    seL4_CapData_ptr->words[0] |= (v << 0) & 0xffffffful;
}

static inline seL4_CapData_t __attribute__((__const__))
seL4_CapData_Guard_new(seL4_Uint32 GuardBits, seL4_Uint32 GuardSize) {
    seL4_CapData_t seL4_CapData;

    seL4_CapData.words[0] = 0;


    do { if (!(((seL4_Uint32)seL4_CapData_Guard & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Guard & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("((seL4_Uint32)seL4_CapData_Guard & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Guard & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 322, __FUNCTION__); } } while(0);
    seL4_CapData.words[0] |= ((seL4_Uint32)seL4_CapData_Guard & 0x1ul) << 31;

    do { if (!((GuardBits & ~0x3fffful) == ((0 && (GuardBits & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(GuardBits & ~0x3fffful) == ((0 && (GuardBits & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 325, __FUNCTION__); } } while(0);
    seL4_CapData.words[0] |= (GuardBits & 0x3fffful) << 8;

    do { if (!((GuardSize & ~0x1ful) == ((0 && (GuardSize & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(GuardSize & ~0x1ful) == ((0 && (GuardSize & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 328, __FUNCTION__); } } while(0);
    seL4_CapData.words[0] |= (GuardSize & 0x1ful) << 3;

    return seL4_CapData;
}

static inline void
seL4_CapData_Guard_ptr_new(seL4_CapData_t *seL4_CapData_ptr, seL4_Uint32 GuardBits, seL4_Uint32 GuardSize) {
    seL4_CapData_ptr->words[0] = 0;


    do { if (!(((seL4_Uint32)seL4_CapData_Guard & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Guard & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("((seL4_Uint32)seL4_CapData_Guard & ~0x1ul) == ((0 && ((seL4_Uint32)seL4_CapData_Guard & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 339, __FUNCTION__); } } while(0);
    seL4_CapData_ptr->words[0] |= ((seL4_Uint32)seL4_CapData_Guard & 0x1ul) << 31;

    do { if (!((GuardBits & ~0x3fffful) == ((0 && (GuardBits & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(GuardBits & ~0x3fffful) == ((0 && (GuardBits & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 342, __FUNCTION__); } } while(0);
    seL4_CapData_ptr->words[0] |= (GuardBits & 0x3fffful) << 8;

    do { if (!((GuardSize & ~0x1ful) == ((0 && (GuardSize & (1ul << 31))) ? 0x0 : 0))) { __assert_fail("(GuardSize & ~0x1ful) == ((0 && (GuardSize & (1ul << 31))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 345, __FUNCTION__); } } while(0);
    seL4_CapData_ptr->words[0] |= (GuardSize & 0x1ful) << 3;
}

static inline seL4_Uint32 __attribute__((__const__))
seL4_CapData_Guard_get_GuardBits(seL4_CapData_t seL4_CapData) {
    seL4_Uint32 ret;
    do { if (!(((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 352 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             353
# 352 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    ret = (seL4_CapData.words[0] & 0x3ffff00ul) >> 8;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapData_t __attribute__((__const__))
seL4_CapData_Guard_set_GuardBits(seL4_CapData_t seL4_CapData, seL4_Uint32 v) {
    do { if (!(((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 365 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             366
# 365 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    do { if (!(((~0x3ffff00ul >> 8) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0x3ffff00ul >> 8) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 368, __FUNCTION__); } } while(0);

    seL4_CapData.words[0] &= ~0x3ffff00ul;
    seL4_CapData.words[0] |= (v << 8) & 0x3ffff00ul;
    return seL4_CapData;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_CapData_Guard_ptr_get_GuardBits(seL4_CapData_t *seL4_CapData_ptr) {
    seL4_Uint32 ret;
    do { if (!(((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 378 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             379
# 378 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    ret = (seL4_CapData_ptr->words[0] & 0x3ffff00ul) >> 8;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapData_Guard_ptr_set_GuardBits(seL4_CapData_t *seL4_CapData_ptr,
                                      seL4_Uint32 v) {
    do { if (!(((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 392 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             393
# 392 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;


    do { if (!(((~0x3ffff00ul >> 8) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0x3ffff00ul >> 8) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 396, __FUNCTION__); } } while(0);

    seL4_CapData_ptr->words[0] &= ~0x3ffff00ul;
    seL4_CapData_ptr->words[0] |= (v << 8) & 0x3ffff00ul;
}

static inline seL4_Uint32 __attribute__((__const__))
seL4_CapData_Guard_get_GuardSize(seL4_CapData_t seL4_CapData) {
    seL4_Uint32 ret;
    do { if (!(((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 405 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             406
# 405 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    ret = (seL4_CapData.words[0] & 0xf8ul) >> 3;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapData_t __attribute__((__const__))
seL4_CapData_Guard_set_GuardSize(seL4_CapData_t seL4_CapData, seL4_Uint32 v) {
    do { if (!(((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 418 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             419
# 418 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    do { if (!(((~0xf8ul >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xf8ul >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 421, __FUNCTION__); } } while(0);

    seL4_CapData.words[0] &= ~0xf8ul;
    seL4_CapData.words[0] |= (v << 3) & 0xf8ul;
    return seL4_CapData;
}

static inline seL4_Uint32 __attribute__((__pure__))
seL4_CapData_Guard_ptr_get_GuardSize(seL4_CapData_t *seL4_CapData_ptr) {
    seL4_Uint32 ret;
    do { if (!(((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 431 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             432
# 431 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;

    ret = (seL4_CapData_ptr->words[0] & 0xf8ul) >> 3;

    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapData_Guard_ptr_set_GuardSize(seL4_CapData_t *seL4_CapData_ptr,
                                      seL4_Uint32 v) {
    do { if (!(((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard)) { __assert_fail("((seL4_CapData_ptr->words[0] >> 31) & 0x1) == seL4_CapData_Guard",
                             "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
# 445 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    ,
                             446
# 445 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
    , __FUNCTION__); } } while(0)
                              ;


    do { if (!(((~0xf8ul >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) { __assert_fail("((~0xf8ul >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h", 449, __FUNCTION__); } } while(0);

    seL4_CapData_ptr->words[0] &= ~0xf8ul;
    seL4_CapData_ptr->words[0] |= (v << 3) & 0xf8ul;
}
# 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/syscall.h" 1
# 9 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/syscall.h"
#define __LIBSEL4_SYSCALL_H 

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
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/syscall.h" 2

typedef enum {
    seL4_SysCall = -1,
    seL4_SysReplyWait = -2,
    seL4_SysSend = -3,
    seL4_SysNBSend = -4,
    seL4_SysWait = -5,
    seL4_SysReply = -6,
    seL4_SysYield = -7,
    seL4_SysPoll = -8,




    seL4_SysDebugPutChar = -10,
    seL4_SysDebugHalt = -11,
    seL4_SysDebugCapIdentify = -12,
    seL4_SysDebugSnapshot = -13,
    seL4_SysDebugNameThread = -14,





    seL4_SysBenchmarkResetLog = -16,
    seL4_SysBenchmarkDumpLog = -17,
    seL4_SysBenchmarkLogSize = -18,

    _enum_pad_seL4_Syscall_ID = (1U << ((sizeof(int)*8) - 1)) - 1
} seL4_Syscall_ID;
# 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/objecttype.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/objecttype.h"
#define __API_OBJECTTYPE_H 

typedef enum api_object {
    seL4_UntypedObject,
    seL4_TCBObject,
    seL4_EndpointObject,
    seL4_AsyncEndpointObject,
    seL4_CapTableObject,
    seL4_NonArchObjectTypeCount,
} seL4_ObjectType;

typedef seL4_Uint32 api_object_t;
# 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/errors.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/errors.h"
#define __ERRORS_H 

typedef enum {
    seL4_NoError = 0,
    seL4_InvalidArgument,
    seL4_InvalidCapability,
    seL4_IllegalOperation,
    seL4_RangeError,
    seL4_AlignmentError,
    seL4_FailedLookup,
    seL4_TruncatedMessage,
    seL4_DeleteFirst,
    seL4_RevokeFirst,
    seL4_NotEnoughMemory,
} seL4_Error;
# 21 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/constants.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/constants.h"
#define __API_CONSTANTS_H 

#define BIT(n) (1ul<<(n))

enum priorityConstants {
    seL4_InvalidPrio = -1,
    seL4_MinPrio = 0,
    seL4_MaxPrio = 256 - 1
};



enum seL4_MsgLimits {
    seL4_MsgLengthBits = 7,
    seL4_MsgExtraCapBits = 2
};

enum {
    seL4_MsgMaxLength = 120,
};
#define seL4_MsgMaxExtraCaps (BIT(seL4_MsgExtraCapBits)-1)
# 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2

typedef enum {
    seL4_NoFault = 0,
    seL4_CapFault,
    seL4_VMFault,
    seL4_UnknownSyscall,
    seL4_UserException,
    _enum_pad_seL4_FaultType = (1U << ((sizeof(int)*8) - 1)) - 1,
} seL4_FaultType;

typedef enum {
    seL4_NoFailure = 0,
    seL4_InvalidRoot,
    seL4_MissingCapability,
    seL4_DepthMismatch,
    seL4_GuardMismatch,
    _enum_pad_seL4_LookupFailureType = (1U << ((sizeof(int)*8) - 1)) - 1,
} seL4_LookupFailureType;

typedef enum {
    seL4_CanWrite = 0x01,
    seL4_CanRead = 0x02,
    seL4_CanGrant = 0x04,
    seL4_AllRights = 0x07,
    _enum_pad_seL4_CapRights = (1U << ((sizeof(int)*8) - 1)) - 1,
} seL4_CapRights;

#define seL4_UntypedRetypeMaxObjects 256
#define seL4_GuardSizeBits 5
#define seL4_GuardBits 18
#define seL4_BadgeBits 28

typedef struct seL4_IPCBuffer_ {
    seL4_MessageInfo_t tag;
    seL4_Word msg[seL4_MsgMaxLength];
    seL4_Word userData;
    seL4_Word caps_or_badges[((1ul<<(seL4_MsgExtraCapBits))-1)];
    seL4_CPtr receiveCNode;
    seL4_CPtr receiveIndex;
    seL4_Word receiveDepth;
} seL4_IPCBuffer __attribute__ ((__aligned__ (sizeof(struct seL4_IPCBuffer_))));

typedef seL4_CPtr seL4_CNode;
typedef seL4_CPtr seL4_IRQHandler;
typedef seL4_CPtr seL4_IRQControl;
typedef seL4_CPtr seL4_TCB;
typedef seL4_CPtr seL4_Untyped;
typedef seL4_CPtr seL4_DomainSet;

#define seL4_NilData seL4_CapData_Badge_new(0)

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/constants.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/constants.h"
#define __LIBSEL4_ARCH_CONSTANTS_H 

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/objecttype.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/objecttype.h"
#define __ARCH_OBJECTTYPE_H 

typedef enum _object {
    seL4_ARM_SmallPageObject = seL4_NonArchObjectTypeCount,
    seL4_ARM_LargePageObject,
    seL4_ARM_SectionObject,
    seL4_ARM_SuperSectionObject,
    seL4_ARM_PageTableObject,
    seL4_ARM_PageDirectoryObject,
    seL4_ObjectTypeCount
} seL4_ArchObjectType;

typedef seL4_Uint32 object_t;
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/constants.h" 2
# 74 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h" 2
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h"
#define __LIBSEL4_ARCH_SYSCALLS_H 

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
# 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/functions.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/functions.h"
#define __LIBSEL4_ARCH_FUNCTIONS_H 



enum {
    seL4_GlobalsFrame = 0xffffc000,
};

static inline seL4_IPCBuffer*
seL4_GetIPCBuffer(void)
{
    return *(seL4_IPCBuffer**)seL4_GlobalsFrame;
}

static inline seL4_MessageInfo_t
seL4_GetTag(void)
{
    return seL4_GetIPCBuffer()->tag;
}

static inline void
seL4_SetTag(seL4_MessageInfo_t tag)
{
    seL4_GetIPCBuffer()->tag = tag;
}

static inline seL4_Word
seL4_GetMR(int i)
{
    return seL4_GetIPCBuffer()->msg[i];
}

static inline void
seL4_SetMR(int i, seL4_Word mr)
{
    seL4_GetIPCBuffer()->msg[i] = mr;
}

static inline seL4_Word
seL4_GetUserData(void)
{
    return seL4_GetIPCBuffer()->userData;
}

static inline void
seL4_SetUserData(seL4_Word data)
{
    seL4_GetIPCBuffer()->userData = data;
}

static inline seL4_CapData_t
seL4_GetBadge(int i)
{
    return (seL4_CapData_t) {
        {
            seL4_GetIPCBuffer()->caps_or_badges[i]
        }
    };
}

static inline seL4_CPtr
seL4_GetCap(int i)
{
    return (seL4_CPtr)seL4_GetIPCBuffer()->caps_or_badges[i];
}

static inline void
seL4_SetCap(int i, seL4_CPtr cptr)
{
    seL4_GetIPCBuffer()->caps_or_badges[i] = (seL4_Word)cptr;
}

static inline void
seL4_GetCapReceivePath(seL4_CPtr* receiveCNode, seL4_CPtr* receiveIndex, seL4_Word* receiveDepth)
{
    seL4_IPCBuffer* ipcbuffer = seL4_GetIPCBuffer();
    if (receiveCNode != (void*)0) {
        *receiveCNode = ipcbuffer->receiveCNode;
    }

    if (receiveIndex != (void*)0) {
        *receiveIndex = ipcbuffer->receiveIndex;
    }

    if (receiveDepth != (void*)0) {
        *receiveDepth = ipcbuffer->receiveDepth;
    }
}

static inline void
seL4_SetCapReceivePath(seL4_CPtr receiveCNode, seL4_CPtr receiveIndex, seL4_Word receiveDepth)
{
    seL4_IPCBuffer* ipcbuffer = seL4_GetIPCBuffer();
    ipcbuffer->receiveCNode = receiveCNode;
    ipcbuffer->receiveIndex = receiveIndex;
    ipcbuffer->receiveDepth = receiveDepth;
}
# 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h" 2


#define __SWINUM(x) ((x) & 0x00ffffff)
# 29 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h"
static inline void
seL4_Send(seL4_CPtr dest, seL4_MessageInfo_t msgInfo)
{
    register seL4_Word destptr asm("r0") = (seL4_Word)dest;
    register seL4_Word info asm("r1") = msgInfo.words[0];


    register seL4_Word msg0 asm("r2") = seL4_GetMR(0);
    register seL4_Word msg1 asm("r3") = seL4_GetMR(1);
    register seL4_Word msg2 asm("r4") = seL4_GetMR(2);
    register seL4_Word msg3 asm("r5") = seL4_GetMR(3);


    register seL4_Word scno asm("r7") = seL4_SysSend;
    asm volatile ("swi %[swi_num]"
                  : "+r" (destptr), "+r" (msg0), "+r" (msg1), "+r" (msg2),
                  "+r" (msg3), "+r" (info)
                  : [swi_num] "i" ((seL4_SysSend) & 0x00ffffff), "r"(scno)
                  : "memory");
}

static inline void
seL4_SendWithMRs(seL4_CPtr dest, seL4_MessageInfo_t msgInfo,
                 seL4_Word *mr0, seL4_Word *mr1, seL4_Word *mr2, seL4_Word *mr3)
{
    register seL4_Word destptr asm("r0") = (seL4_Word)dest;
    register seL4_Word info asm("r1") = msgInfo.words[0];


    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");
    register seL4_Word scno asm("r7") = seL4_SysSend;

    if (mr0 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 0) {
        msg0 = *mr0;
    }
    if (mr1 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 1) {
        msg1 = *mr1;
    }
    if (mr2 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 2) {
        msg2 = *mr2;
    }
    if (mr3 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 3) {
        msg3 = *mr3;
    }


    asm volatile ("swi %[swi_num]"
                  : "+r" (destptr), "+r" (msg0), "+r" (msg1), "+r" (msg2),
                  "+r" (msg3), "+r" (info)
                  : [swi_num] "i" ((seL4_SysSend) & 0x00ffffff), "r"(scno)
                  : "memory");
}

static inline void
seL4_NBSend(seL4_CPtr dest, seL4_MessageInfo_t msgInfo)
{
    register seL4_Word destptr asm("r0") = (seL4_Word)dest;
    register seL4_Word info asm("r1") = msgInfo.words[0];


    register seL4_Word msg0 asm("r2") = seL4_GetMR(0);
    register seL4_Word msg1 asm("r3") = seL4_GetMR(1);
    register seL4_Word msg2 asm("r4") = seL4_GetMR(2);
    register seL4_Word msg3 asm("r5") = seL4_GetMR(3);


    register seL4_Word scno asm("r7") = seL4_SysNBSend;
    asm volatile ("swi %[swi_num]"
                  : "+r" (destptr), "+r" (msg0), "+r" (msg1), "+r" (msg2),
                  "+r" (msg3), "+r" (info)
                  : [swi_num] "i" ((seL4_SysNBSend) & 0x00ffffff), "r"(scno)
                  : "memory");
}

static inline void
seL4_NBSendWithMRs(seL4_CPtr dest, seL4_MessageInfo_t msgInfo,
                   seL4_Word *mr0, seL4_Word *mr1, seL4_Word *mr2, seL4_Word *mr3)
{
    register seL4_Word destptr asm("r0") = (seL4_Word)dest;
    register seL4_Word info asm("r1") = msgInfo.words[0];


    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");
    register seL4_Word scno asm("r7") = seL4_SysNBSend;

    if (mr0 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 0) {
        msg0 = *mr0;
    }
    if (mr1 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 1) {
        msg1 = *mr1;
    }
    if (mr2 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 2) {
        msg2 = *mr2;
    }
    if (mr3 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 3) {
        msg3 = *mr3;
    }


    asm volatile ("swi %[swi_num]"
                  : "+r" (destptr), "+r" (msg0), "+r" (msg1), "+r" (msg2),
                  "+r" (msg3), "+r" (info)
                  : [swi_num] "i" ((seL4_SysNBSend) & 0x00ffffff), "r"(scno)
                  : "memory");
}

static inline void
seL4_Reply(seL4_MessageInfo_t msgInfo)
{
    register seL4_Word info asm("r1") = msgInfo.words[0];


    register seL4_Word msg0 asm("r2") = seL4_GetMR(0);
    register seL4_Word msg1 asm("r3") = seL4_GetMR(1);
    register seL4_Word msg2 asm("r4") = seL4_GetMR(2);
    register seL4_Word msg3 asm("r5") = seL4_GetMR(3);


    register seL4_Word scno asm("r7") = seL4_SysReply;
    asm volatile ("swi %[swi_num]"
                  : "+r" (msg0), "+r" (msg1), "+r" (msg2), "+r" (msg3),
                  "+r" (info)
                  : [swi_num] "i" ((seL4_SysReply) & 0x00ffffff), "r"(scno)
                  : "memory");
}

static inline void
seL4_ReplyWithMRs(seL4_MessageInfo_t msgInfo,
                  seL4_Word *mr0, seL4_Word *mr1, seL4_Word *mr2, seL4_Word *mr3)
{
    register seL4_Word info asm("r1") = msgInfo.words[0];


    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");
    register seL4_Word scno asm("r7") = seL4_SysReply;

    if (mr0 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 0) {
        msg0 = *mr0;
    }
    if (mr1 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 1) {
        msg1 = *mr1;
    }
    if (mr2 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 2) {
        msg2 = *mr2;
    }
    if (mr3 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 3) {
        msg3 = *mr3;
    }


    asm volatile ("swi %[swi_num]"
                  : "+r" (msg0), "+r" (msg1), "+r" (msg2), "+r" (msg3),
                  "+r" (info)
                  : [swi_num] "i" ((seL4_SysReply) & 0x00ffffff), "r"(scno)
                  : "memory");
}

static inline void
seL4_Notify(seL4_CPtr dest, seL4_Word msg)
{
    register seL4_Word destptr asm("r0") = (seL4_Word)dest;
    register seL4_Word info asm("r1") = seL4_MessageInfo_new(0, 0, 0, 1).words[0];
    register seL4_Word msg0 asm("r2") = msg;


    register seL4_Word scno asm("r7") = seL4_SysSend;
    asm volatile ("swi %[swi_num]"
                  : "+r" (destptr), "+r" (msg0), "+r" (info)
                  : [swi_num] "i" ((seL4_SysSend) & 0x00ffffff), "r"(scno)
                  : "memory");
}

static inline seL4_MessageInfo_t
seL4_Wait(seL4_CPtr src, seL4_Word* sender)
{
    register seL4_Word src_and_badge asm("r0") = (seL4_Word)src;
    register seL4_MessageInfo_t info asm("r1");


    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");


    register seL4_Word scno asm("r7") = seL4_SysWait;
    asm volatile ("swi %[swi_num]"
                  : "=r" (msg0), "=r" (msg1), "=r" (msg2), "=r" (msg3),
                  "=r" (info), "+r" (src_and_badge)
                  : [swi_num] "i" ((seL4_SysWait) & 0x00ffffff), "r"(scno)
                  : "memory");


    seL4_SetMR(0, msg0);
    seL4_SetMR(1, msg1);
    seL4_SetMR(2, msg2);
    seL4_SetMR(3, msg3);


    if (sender) {
        *sender = src_and_badge;
    }
    return (seL4_MessageInfo_t) {
        .words = {info.words[0]}
    };
}

static inline seL4_MessageInfo_t
seL4_WaitWithMRs(seL4_CPtr src, seL4_Word* sender,
                 seL4_Word *mr0, seL4_Word *mr1, seL4_Word *mr2, seL4_Word *mr3)
{
    register seL4_Word src_and_badge asm("r0") = (seL4_Word)src;
    register seL4_MessageInfo_t info asm("r1");


    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");


    register seL4_Word scno asm("r7") = seL4_SysWait;
    asm volatile ("swi %[swi_num]"
                  : "=r" (msg0), "=r" (msg1), "=r" (msg2), "=r" (msg3),
                  "=r" (info.words[0]), "+r" (src_and_badge)
                  : [swi_num] "i" ((seL4_SysWait) & 0x00ffffff), "r"(scno)
                  : "memory");


    if (mr0 != ((void*)0)) {
        *mr0 = msg0;
    }
    if (mr1 != ((void*)0)) {
        *mr1 = msg1;
    }
    if (mr2 != ((void*)0)) {
        *mr2 = msg2;
    }
    if (mr3 != ((void*)0)) {
        *mr3 = msg3;
    }


    if (sender) {
        *sender = src_and_badge;
    }
    return (seL4_MessageInfo_t) {
        .words = {info.words[0]}
    };
}

static inline seL4_MessageInfo_t
seL4_Poll(seL4_CPtr src, seL4_Word* sender)
{
    register seL4_Word src_and_badge asm("r0") = (seL4_Word)src;
    register seL4_MessageInfo_t info asm("r1");


    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");


    register seL4_Word scno asm("r7") = seL4_SysPoll;
    asm volatile ("swi %[swi_num]"
                  : "=r" (msg0), "=r" (msg1), "=r" (msg2), "=r" (msg3),
                  "=r" (info), "+r" (src_and_badge)
                  : [swi_num] "i" ((seL4_SysPoll) & 0x00ffffff), "r"(scno)
                  : "memory");


    seL4_SetMR(0, msg0);
    seL4_SetMR(1, msg1);
    seL4_SetMR(2, msg2);
    seL4_SetMR(3, msg3);


    if (sender) {
        *sender = src_and_badge;
    }
    return (seL4_MessageInfo_t) {
        .words = {info.words[0]}
    };
}

static inline seL4_MessageInfo_t
seL4_Call(seL4_CPtr dest, seL4_MessageInfo_t msgInfo)
{
    register seL4_Word destptr asm("r0") = (seL4_Word)dest;
    register seL4_MessageInfo_t info asm("r1") = msgInfo;


    register seL4_Word msg0 asm("r2") = seL4_GetMR(0);
    register seL4_Word msg1 asm("r3") = seL4_GetMR(1);
    register seL4_Word msg2 asm("r4") = seL4_GetMR(2);
    register seL4_Word msg3 asm("r5") = seL4_GetMR(3);


    register seL4_Word scno asm("r7") = seL4_SysCall;
    asm volatile ("swi %[swi_num]"
                  : "+r" (msg0), "+r" (msg1), "+r" (msg2), "+r" (msg3),
                  "+r" (info), "+r" (destptr)
                  : [swi_num] "i" ((seL4_SysCall) & 0x00ffffff), "r"(scno)
                  : "memory");


    seL4_SetMR(0, msg0);
    seL4_SetMR(1, msg1);
    seL4_SetMR(2, msg2);
    seL4_SetMR(3, msg3);

    return (seL4_MessageInfo_t) {
        .words = {info.words[0]}
    };
}

static inline seL4_MessageInfo_t
seL4_CallWithMRs(seL4_CPtr dest, seL4_MessageInfo_t msgInfo,
                 seL4_Word *mr0, seL4_Word *mr1, seL4_Word *mr2, seL4_Word *mr3)
{
    register seL4_Word destptr asm("r0") = (seL4_Word)dest;
    register seL4_MessageInfo_t info asm("r1") = msgInfo;

    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");
    register seL4_Word scno asm("r7") = seL4_SysCall;


    if (mr0 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 0) {
        msg0 = *mr0;
    }
    if (mr1 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 1) {
        msg1 = *mr1;
    }
    if (mr2 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 2) {
        msg2 = *mr2;
    }
    if (mr3 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 3) {
        msg3 = *mr3;
    }


    asm volatile ("swi %[swi_num]"
                  : "+r" (msg0), "+r" (msg1), "+r" (msg2), "+r" (msg3),
                  "+r" (info), "+r" (destptr)
                  : [swi_num] "i" ((seL4_SysCall) & 0x00ffffff), "r"(scno)
                  : "memory");


    if (mr0 != ((void*)0)) {
        *mr0 = msg0;
    }
    if (mr1 != ((void*)0)) {
        *mr1 = msg1;
    }
    if (mr2 != ((void*)0)) {
        *mr2 = msg2;
    }
    if (mr3 != ((void*)0)) {
        *mr3 = msg3;
    }

    return (seL4_MessageInfo_t) {
        .words = {info.words[0]}
    };
}

static inline seL4_MessageInfo_t
seL4_ReplyWait(seL4_CPtr src, seL4_MessageInfo_t msgInfo, seL4_Word *sender)
{
    register seL4_Word src_and_badge asm("r0") = (seL4_Word)src;
    register seL4_MessageInfo_t info asm("r1") = msgInfo;


    register seL4_Word msg0 asm("r2") = seL4_GetMR(0);
    register seL4_Word msg1 asm("r3") = seL4_GetMR(1);
    register seL4_Word msg2 asm("r4") = seL4_GetMR(2);
    register seL4_Word msg3 asm("r5") = seL4_GetMR(3);


    register seL4_Word scno asm("r7") = seL4_SysReplyWait;
    asm volatile ("swi %[swi_num]"
                  : "+r" (msg0), "+r" (msg1), "+r" (msg2), "+r" (msg3),
                  "+r" (info), "+r" (src_and_badge)
                  : [swi_num] "i" ((seL4_SysReplyWait) & 0x00ffffff), "r"(scno)
                  : "memory");


    seL4_SetMR(0, msg0);
    seL4_SetMR(1, msg1);
    seL4_SetMR(2, msg2);
    seL4_SetMR(3, msg3);


    if (sender) {
        *sender = src_and_badge;
    }
    return (seL4_MessageInfo_t) {
        .words = {info.words[0]}
    };
}

static inline seL4_MessageInfo_t
seL4_ReplyWaitWithMRs(seL4_CPtr src, seL4_MessageInfo_t msgInfo, seL4_Word *sender,
                      seL4_Word *mr0, seL4_Word *mr1, seL4_Word *mr2, seL4_Word *mr3)
{
    register seL4_Word src_and_badge asm("r0") = (seL4_Word)src;
    register seL4_MessageInfo_t info asm("r1") = msgInfo;


    register seL4_Word msg0 asm("r2");
    register seL4_Word msg1 asm("r3");
    register seL4_Word msg2 asm("r4");
    register seL4_Word msg3 asm("r5");
    register seL4_Word scno asm("r7") = seL4_SysReplyWait;

    if (mr0 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 0) {
        msg0 = *mr0;
    }
    if (mr1 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 1) {
        msg1 = *mr1;
    }
    if (mr2 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 2) {
        msg2 = *mr2;
    }
    if (mr3 != ((void*)0) && seL4_MessageInfo_get_length(msgInfo) > 3) {
        msg3 = *mr3;
    }


    asm volatile ("swi %[swi_num]"
                  : "+r" (msg0), "+r" (msg1), "+r" (msg2), "+r" (msg3),
                  "+r" (info), "+r" (src_and_badge)
                  : [swi_num] "i" ((seL4_SysReplyWait) & 0x00ffffff), "r"(scno)
                  : "memory");


    if (mr0 != ((void*)0)) {
        *mr0 = msg0;
    }
    if (mr1 != ((void*)0)) {
        *mr1 = msg1;
    }
    if (mr2 != ((void*)0)) {
        *mr2 = msg2;
    }
    if (mr3 != ((void*)0)) {
        *mr3 = msg3;
    }


    if (sender) {
        *sender = src_and_badge;
    }
    return (seL4_MessageInfo_t) {
        .words = {info.words[0]}
    };
}

static inline void
seL4_Yield(void)
{
    register seL4_Word scno asm("r7") = seL4_SysYield;
    asm volatile ("swi %[swi_num]"
                  :
                  : [swi_num] "i" ((seL4_SysYield) & 0x00ffffff), "r"(scno)
                  : "memory");
}


static inline void
seL4_DebugPutChar(char c)
{
    register seL4_Word arg1 asm("r0") = c;
    register seL4_Word scno asm("r7") = seL4_SysDebugPutChar;
    asm volatile ("swi %[swi_num]"
                  :
                  : [swi_num] "i" ((seL4_SysDebugPutChar) & 0x00ffffff), "r" (arg1), "r"(scno));
}



static inline void
seL4_DebugHalt(void)
{
    register seL4_Word scno asm("r7") = seL4_SysDebugHalt;
    asm volatile ("swi %[swi_num]"
                  :
                  : [swi_num] "i" ((seL4_SysDebugHalt) & 0x00ffffff), "r"(scno));
}



static inline void
seL4_DebugSnapshot(void)
{
    register seL4_Word scno asm("r7") = seL4_SysDebugSnapshot;
    asm volatile ("swi %[swi_num]"
                  :
                  : [swi_num] "i" ((seL4_SysDebugSnapshot) & 0x00ffffff), "r"(scno));
}



static inline seL4_Uint32
seL4_DebugCapIdentify(seL4_CPtr cap)
{
    register seL4_Word arg1 asm("r0") = cap;
    register seL4_Word scno asm("r7") = seL4_SysDebugCapIdentify;
    asm volatile ("swi %[swi_num]"
                  : "+r"(arg1)
                  : [swi_num] "i" ((seL4_SysDebugCapIdentify) & 0x00ffffff), "r"(scno));
    return (seL4_Uint32)arg1;
}




char *strcpy(char *, const char *);
static inline void
seL4_DebugNameThread(seL4_CPtr tcb, const char *name)
{
    strcpy((char*)seL4_GetIPCBuffer()->msg, name);

    register seL4_Word arg1 asm("r0") = tcb;
    register seL4_Word scno asm("r7") = seL4_SysDebugNameThread;
    asm volatile ("swi %[swi_num]"
                  : "+r"(arg1)
                  : [swi_num] "i" ((seL4_SysDebugNameThread) & 0x00ffffff), "r"(scno)
                  : "memory");
}
# 591 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h"
static inline void
seL4_BenchmarkResetLog(void)
{
    register seL4_Word scno asm("r7") = seL4_SysBenchmarkResetLog;
    asm volatile ("swi %[swi_num]"
                  :
                  : [swi_num] "i" ((seL4_SysBenchmarkResetLog) & 0x00ffffff), "r"(scno)
                 );
}




static inline seL4_Uint32
seL4_BenchmarkDumpLog(seL4_Word start, seL4_Word size)
{

    register seL4_Word arg1 asm("r0") = (seL4_Word) start;
    register seL4_Word arg2 asm("r1") = (seL4_Word) size;
    register seL4_Word scno asm("r7") = seL4_SysBenchmarkDumpLog;
    asm volatile ("swi %[swi_num]"
                  : "+r" (arg1)
                  : [swi_num] "i" ((seL4_SysBenchmarkDumpLog) & 0x00ffffff), "r" (arg1), "r" (arg2), "r"(scno));

    return (seL4_Uint32) arg1;

}



static inline seL4_Uint32
seL4_BenchmarkLogSize(void)
{

    register seL4_Word arg1 asm("r0") = 0;
    register seL4_Word scno asm("r7") = seL4_SysBenchmarkLogSize;
    asm volatile ("swi %[swi_num]"
                  : "+r" (arg1)
                  : [swi_num] "i" ((seL4_SysBenchmarkLogSize) & 0x00ffffff), "r"(scno));

    return (seL4_Uint32) arg1;

}




#undef __SWINUM
# 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/invocation.h" 1
# 9 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/invocation.h"
#define __LIBSEL4_INVOCATION_H 

enum invocation_label {
    InvalidInvocation,
    UntypedRetype,
    TCBReadRegisters,
    TCBWriteRegisters,
    TCBCopyRegisters,
    TCBConfigure,
    TCBSetPriority,
    TCBSetIPCBuffer,
    TCBSetSpace,
    TCBSuspend,
    TCBResume,
    TCBBindAEP,
    TCBUnbindAEP,
    TCBSetEPTRoot,
    CNodeRevoke,
    CNodeDelete,
    CNodeRecycle,
    CNodeCopy,
    CNodeMint,
    CNodeMove,
    CNodeMutate,
    CNodeRotate,
    CNodeSaveCaller,
    IRQIssueIRQHandler,
    IRQInterruptControl,
    IRQAckIRQ,
    IRQSetIRQHandler,
    IRQClearIRQHandler,
    IRQSetMode,
    DomainSetSet,
    nInvocationLabels
};
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/invocation.h" 1
# 9 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/invocation.h"
#define __LIBSEL4_ARCH_INVOCATION_H 

enum arch_invocation_label {
    ARMPDClean_Data = nInvocationLabels + 0,
    ARMPDInvalidate_Data = nInvocationLabels + 1,
    ARMPDCleanInvalidate_Data = nInvocationLabels + 2,
    ARMPDUnify_Instruction = nInvocationLabels + 3,
    ARMPageTableMap = nInvocationLabels + 4,
    ARMPageTableUnmap = nInvocationLabels + 5,
    ARMPageMap = nInvocationLabels + 6,
    ARMPageUnmap = nInvocationLabels + 7,
    ARMPageClean_Data = nInvocationLabels + 8,
    ARMPageInvalidate_Data = nInvocationLabels + 9,
    ARMPageCleanInvalidate_Data = nInvocationLabels + 10,
    ARMPageUnify_Instruction = nInvocationLabels + 11,
    ARMPageGetAddress = nInvocationLabels + 12,
    nArchInvocationLabels
};
# 45 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/invocation.h" 2
# 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/interfaces/sel4_client.h" 1






#define __LIBSEL4_SEL4_CLIENT_H 

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
# 10 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/interfaces/sel4_client.h" 2
# 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/interfaces/sel4_client.h"
#define assert_size_correct(type,expected_bytes) typedef unsigned long __type_ ##type ##_size_incorrect[ (sizeof(type) == expected_bytes) ? 1 : -1]



typedef unsigned long __type_int_size_incorrect[ (sizeof(int) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_Uint8_size_incorrect[ (sizeof(seL4_Uint8) == 1) ? 1 : -1];
typedef unsigned long __type_seL4_Uint16_size_incorrect[ (sizeof(seL4_Uint16) == 2) ? 1 : -1];
typedef unsigned long __type_seL4_Uint32_size_incorrect[ (sizeof(seL4_Uint32) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_Uint64_size_incorrect[ (sizeof(seL4_Uint64) == 8) ? 1 : -1];
typedef unsigned long __type_seL4_Word_size_incorrect[ (sizeof(seL4_Word) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_Bool_size_incorrect[ (sizeof(seL4_Bool) == 1) ? 1 : -1];
typedef unsigned long __type_seL4_CapRights_size_incorrect[ (sizeof(seL4_CapRights) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_CapData_t_size_incorrect[ (sizeof(seL4_CapData_t) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_CPtr_size_incorrect[ (sizeof(seL4_CPtr) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_CNode_size_incorrect[ (sizeof(seL4_CNode) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_IRQHandler_size_incorrect[ (sizeof(seL4_IRQHandler) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_IRQControl_size_incorrect[ (sizeof(seL4_IRQControl) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_TCB_size_incorrect[ (sizeof(seL4_TCB) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_Untyped_size_incorrect[ (sizeof(seL4_Untyped) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_DomainSet_size_incorrect[ (sizeof(seL4_DomainSet) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_ARM_VMAttributes_size_incorrect[ (sizeof(seL4_ARM_VMAttributes) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_ARM_Page_size_incorrect[ (sizeof(seL4_ARM_Page) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_ARM_PageTable_size_incorrect[ (sizeof(seL4_ARM_PageTable) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_ARM_PageDirectory_size_incorrect[ (sizeof(seL4_ARM_PageDirectory) == 4) ? 1 : -1];
typedef unsigned long __type_seL4_UserContext_size_incorrect[ (sizeof(seL4_UserContext) == 68) ? 1 : -1];




struct seL4_ARM_Page_GetAddress {
 int error;
 seL4_Word paddr;
};
typedef struct seL4_ARM_Page_GetAddress seL4_ARM_Page_GetAddress_t;




static inline int
seL4_ARM_PageDirectory_Clean_Data(seL4_ARM_PageDirectory service, seL4_Word start, seL4_Word end)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPDClean_Data, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start;
 mr1 = end;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_PageDirectory_Invalidate_Data(seL4_ARM_PageDirectory service, seL4_Word start, seL4_Word end)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPDInvalidate_Data, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start;
 mr1 = end;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_PageDirectory_CleanInvalidate_Data(seL4_ARM_PageDirectory service, seL4_Word start, seL4_Word end)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPDCleanInvalidate_Data, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start;
 mr1 = end;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_PageDirectory_Unify_Instruction(seL4_ARM_PageDirectory service, seL4_Word start, seL4_Word end)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPDUnify_Instruction, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start;
 mr1 = end;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_PageTable_Map(seL4_ARM_PageTable service, seL4_ARM_PageDirectory pd, seL4_Word vaddr, seL4_ARM_VMAttributes attr)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageTableMap, 0, 1, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 seL4_SetCap(0, pd);


 mr0 = vaddr;
 mr1 = attr;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_PageTable_Unmap(seL4_ARM_PageTable service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageTableUnmap, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_Page_Map(seL4_ARM_Page service, seL4_ARM_PageDirectory pd, seL4_Word vaddr, seL4_CapRights rights, seL4_ARM_VMAttributes attr)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageMap, 0, 1, 3);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;


 seL4_SetCap(0, pd);


 mr0 = vaddr;
 mr1 = rights;
 mr2 = attr;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_Page_Unmap(seL4_ARM_Page service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageUnmap, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_Page_Clean_Data(seL4_ARM_Page service, seL4_Word start_offset, seL4_Word end_offset)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageClean_Data, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start_offset;
 mr1 = end_offset;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_Page_Invalidate_Data(seL4_ARM_Page service, seL4_Word start_offset, seL4_Word end_offset)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageInvalidate_Data, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start_offset;
 mr1 = end_offset;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_Page_CleanInvalidate_Data(seL4_ARM_Page service, seL4_Word start_offset, seL4_Word end_offset)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageCleanInvalidate_Data, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start_offset;
 mr1 = end_offset;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_ARM_Page_Unify_Instruction(seL4_ARM_Page service, seL4_Word start_offset, seL4_Word end_offset)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageUnify_Instruction, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = start_offset;
 mr1 = end_offset;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline seL4_ARM_Page_GetAddress_t
seL4_ARM_Page_GetAddress(seL4_ARM_Page service)
{
 seL4_ARM_Page_GetAddress_t result;
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(ARMPageGetAddress, 0, 0, 0);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, ((void*)0), ((void*)0), ((void*)0));


 result.paddr = mr0;

 result.error = seL4_MessageInfo_get_label(output_tag);
 return result;
}

static inline int
seL4_Untyped_RetypeAtOffset(seL4_Untyped service, int type, int offset, int size_bits, seL4_CNode root, int node_index, int node_depth, int node_offset, int num_objects)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(UntypedRetype, 0, 1, 7);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 seL4_SetCap(0, root);


 mr0 = type;
 mr1 = offset;
 mr2 = size_bits;
 mr3 = node_index;
 seL4_SetMR(4, node_depth);
 seL4_SetMR(5, node_offset);
 seL4_SetMR(6, num_objects);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_ReadRegisters(seL4_TCB service, seL4_Bool suspend_source, seL4_Uint8 arch_flags, seL4_Word count, seL4_UserContext *regs)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBReadRegisters, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 mr0 = (suspend_source & 0x1) | ((arch_flags & 0xff) << 8);
 mr1 = count;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);


 regs->pc = mr0;
 regs->sp = mr1;
 regs->cpsr = mr2;
 regs->r0 = mr3;
 regs->r1 = seL4_GetMR(4);
 regs->r8 = seL4_GetMR(5);
 regs->r9 = seL4_GetMR(6);
 regs->r10 = seL4_GetMR(7);
 regs->r11 = seL4_GetMR(8);
 regs->r12 = seL4_GetMR(9);
 regs->r2 = seL4_GetMR(10);
 regs->r3 = seL4_GetMR(11);
 regs->r4 = seL4_GetMR(12);
 regs->r5 = seL4_GetMR(13);
 regs->r6 = seL4_GetMR(14);
 regs->r7 = seL4_GetMR(15);
 regs->r14 = seL4_GetMR(16);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_WriteRegisters(seL4_TCB service, seL4_Bool resume_target, seL4_Uint8 arch_flags, seL4_Word count, seL4_UserContext *regs)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBWriteRegisters, 0, 0, 19);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 mr0 = (resume_target & 0x1) | ((arch_flags & 0xff) << 8);
 mr1 = count;
 mr2 = regs->pc;
 mr3 = regs->sp;
 seL4_SetMR(4, regs->cpsr);
 seL4_SetMR(5, regs->r0);
 seL4_SetMR(6, regs->r1);
 seL4_SetMR(7, regs->r8);
 seL4_SetMR(8, regs->r9);
 seL4_SetMR(9, regs->r10);
 seL4_SetMR(10, regs->r11);
 seL4_SetMR(11, regs->r12);
 seL4_SetMR(12, regs->r2);
 seL4_SetMR(13, regs->r3);
 seL4_SetMR(14, regs->r4);
 seL4_SetMR(15, regs->r5);
 seL4_SetMR(16, regs->r6);
 seL4_SetMR(17, regs->r7);
 seL4_SetMR(18, regs->r14);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_CopyRegisters(seL4_TCB service, seL4_TCB source, seL4_Bool suspend_source, seL4_Bool resume_target, seL4_Bool transfer_frame, seL4_Bool transfer_integer, seL4_Uint8 arch_flags)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBCopyRegisters, 0, 1, 1);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;


 seL4_SetCap(0, source);


 mr0 = (suspend_source & 0x1) | ((resume_target & 0x1) << 1) | ((transfer_frame & 0x1) << 2) | ((transfer_integer & 0x1) << 3) | ((arch_flags & 0xff) << 8);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_Configure(seL4_TCB service, seL4_Word fault_ep, seL4_Uint8 priority, seL4_CNode cspace_root, seL4_CapData_t cspace_root_data, seL4_CNode vspace_root, seL4_CapData_t vspace_root_data, seL4_Word buffer, seL4_CPtr bufferFrame)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBConfigure, 0, 3, 5);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 seL4_SetCap(0, cspace_root);
 seL4_SetCap(1, vspace_root);
 seL4_SetCap(2, bufferFrame);


 mr0 = fault_ep;
 mr1 = (priority & 0xff);
 mr2 = cspace_root_data.words[0];
 mr3 = vspace_root_data.words[0];
 seL4_SetMR(4, buffer);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_SetPriority(seL4_TCB service, seL4_Uint8 priority)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBSetPriority, 0, 0, 1);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;


 mr0 = (priority & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_SetIPCBuffer(seL4_TCB service, seL4_Word buffer, seL4_CPtr bufferFrame)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBSetIPCBuffer, 0, 1, 1);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;


 seL4_SetCap(0, bufferFrame);


 mr0 = buffer;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_SetSpace(seL4_TCB service, seL4_Word fault_ep, seL4_CNode cspace_root, seL4_CapData_t cspace_root_data, seL4_CNode vspace_root, seL4_CapData_t vspace_root_data)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBSetSpace, 0, 2, 3);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;


 seL4_SetCap(0, cspace_root);
 seL4_SetCap(1, vspace_root);


 mr0 = fault_ep;
 mr1 = cspace_root_data.words[0];
 mr2 = vspace_root_data.words[0];


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_Suspend(seL4_TCB service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBSuspend, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_Resume(seL4_TCB service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBResume, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_BindAEP(seL4_TCB service, seL4_CPtr async_endpoint)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBBindAEP, 0, 1, 0);
 seL4_MessageInfo_t output_tag;


 seL4_SetCap(0, async_endpoint);


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_UnbindAEP(seL4_TCB service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBUnbindAEP, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_TCB_SetEPTRoot(seL4_TCB service, seL4_CPtr vcpu)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(TCBSetEPTRoot, 0, 1, 0);
 seL4_MessageInfo_t output_tag;


 seL4_SetCap(0, vcpu);


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Revoke(seL4_CNode service, seL4_Word index, seL4_Uint8 depth)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeRevoke, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = index;
 mr1 = (depth & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Delete(seL4_CNode service, seL4_Word index, seL4_Uint8 depth)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeDelete, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = index;
 mr1 = (depth & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Recycle(seL4_CNode service, seL4_Word index, seL4_Uint8 depth)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeRecycle, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = index;
 mr1 = (depth & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Copy(seL4_CNode service, seL4_Word dest_index, seL4_Uint8 dest_depth, seL4_CNode src_root, seL4_Word src_index, seL4_Uint8 src_depth, seL4_CapRights rights)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeCopy, 0, 1, 5);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 seL4_SetCap(0, src_root);


 mr0 = dest_index;
 mr1 = (dest_depth & 0xff);
 mr2 = src_index;
 mr3 = (src_depth & 0xff);
 seL4_SetMR(4, rights);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Mint(seL4_CNode service, seL4_Word dest_index, seL4_Uint8 dest_depth, seL4_CNode src_root, seL4_Word src_index, seL4_Uint8 src_depth, seL4_CapRights rights, seL4_CapData_t badge)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeMint, 0, 1, 6);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 seL4_SetCap(0, src_root);


 mr0 = dest_index;
 mr1 = (dest_depth & 0xff);
 mr2 = src_index;
 mr3 = (src_depth & 0xff);
 seL4_SetMR(4, rights);
 seL4_SetMR(5, badge.words[0]);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Move(seL4_CNode service, seL4_Word dest_index, seL4_Uint8 dest_depth, seL4_CNode src_root, seL4_Word src_index, seL4_Uint8 src_depth)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeMove, 0, 1, 4);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 seL4_SetCap(0, src_root);


 mr0 = dest_index;
 mr1 = (dest_depth & 0xff);
 mr2 = src_index;
 mr3 = (src_depth & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Mutate(seL4_CNode service, seL4_Word dest_index, seL4_Uint8 dest_depth, seL4_CNode src_root, seL4_Word src_index, seL4_Uint8 src_depth, seL4_CapData_t badge)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeMutate, 0, 1, 5);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 seL4_SetCap(0, src_root);


 mr0 = dest_index;
 mr1 = (dest_depth & 0xff);
 mr2 = src_index;
 mr3 = (src_depth & 0xff);
 seL4_SetMR(4, badge.words[0]);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_Rotate(seL4_CNode service, seL4_Word dest_index, seL4_Uint8 dest_depth, seL4_CapData_t dest_badge, seL4_CNode pivot_root, seL4_Word pivot_index, seL4_Uint8 pivot_depth, seL4_CapData_t pivot_badge, seL4_CNode src_root, seL4_Word src_index, seL4_Uint8 src_depth)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeRotate, 0, 2, 8);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;
 seL4_Word mr3;


 seL4_SetCap(0, pivot_root);
 seL4_SetCap(1, src_root);


 mr0 = dest_index;
 mr1 = (dest_depth & 0xff);
 mr2 = dest_badge.words[0];
 mr3 = pivot_index;
 seL4_SetMR(4, (pivot_depth & 0xff));
 seL4_SetMR(5, pivot_badge.words[0]);
 seL4_SetMR(6, src_index);
 seL4_SetMR(7, (src_depth & 0xff));


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, &mr3);

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_CNode_SaveCaller(seL4_CNode service, seL4_Word index, seL4_Uint8 depth)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(CNodeSaveCaller, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = index;
 mr1 = (depth & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_IRQControl_Get(seL4_IRQControl service, int irq, seL4_CNode root, seL4_Word index, seL4_Uint8 depth)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(IRQIssueIRQHandler, 0, 1, 3);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;
 seL4_Word mr2;


 seL4_SetCap(0, root);


 mr0 = irq;
 mr1 = index;
 mr2 = (depth & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, &mr2, ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_IRQControl_Control(seL4_IRQControl service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(IRQInterruptControl, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_IRQHandler_Ack(seL4_IRQHandler service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(IRQAckIRQ, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_IRQHandler_SetEndpoint(seL4_IRQHandler service, seL4_CPtr endpoint)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(IRQSetIRQHandler, 0, 1, 0);
 seL4_MessageInfo_t output_tag;


 seL4_SetCap(0, endpoint);


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_IRQHandler_Clear(seL4_IRQHandler service)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(IRQClearIRQHandler, 0, 0, 0);
 seL4_MessageInfo_t output_tag;


 output_tag = seL4_CallWithMRs(service, tag,
  ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_IRQHandler_SetMode(seL4_IRQHandler service, seL4_Uint32 level_trigger, seL4_Uint32 low_polarity)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(IRQSetMode, 0, 0, 2);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;
 seL4_Word mr1;


 mr0 = level_trigger;
 mr1 = low_polarity;


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, &mr1, ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}

static inline int
seL4_DomainSet_Set(seL4_DomainSet service, seL4_Uint8 domain, seL4_TCB thread)
{
 seL4_MessageInfo_t tag = seL4_MessageInfo_new(DomainSetSet, 0, 1, 1);
 seL4_MessageInfo_t output_tag;
 seL4_Word mr0;


 seL4_SetCap(0, thread);


 mr0 = (domain & 0xff);


 output_tag = seL4_CallWithMRs(service, tag,
  &mr0, ((void*)0), ((void*)0), ((void*)0));

 return seL4_MessageInfo_get_label(output_tag);
}
# 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/bootinfo.h" 1
# 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/bootinfo.h"
#define __LIBSEL4_BOOTINFO_H 





enum {
    seL4_CapNull = 0,
    seL4_CapInitThreadTCB = 1,
    seL4_CapInitThreadCNode = 2,
    seL4_CapInitThreadVSpace = 3,
    seL4_CapIRQControl = 4,
    seL4_CapIOPort = 5,
    seL4_CapIOSpace = 6,
    seL4_CapBootInfoFrame = 7,
    seL4_CapArchBootInfoFrame = 8,
    seL4_CapInitThreadIPCBuffer = 9,
    seL4_CapIPI = 10,
    seL4_CapDomain = 11
};



#define seL4_CapInitThreadPD seL4_CapInitThreadVSpace



typedef struct {
    seL4_Word start;
    seL4_Word end;
} seL4_SlotRegion;

typedef struct {
    seL4_Word nodeID;
    seL4_Word numNodes;
    seL4_Word numIOPTLevels;
    seL4_IPCBuffer* ipcBuffer;
    seL4_SlotRegion empty;
    seL4_SlotRegion sharedFrames;
    seL4_SlotRegion userImageFrames;
    seL4_SlotRegion userImagePDs;
    seL4_SlotRegion userImagePTs;
    seL4_SlotRegion untyped;
    seL4_SlotRegion deviceUntyped;
    seL4_Word untypedPaddrList [800];
    seL4_Uint8 untypedSizeBitsList[800];
    seL4_Uint8 initThreadCNodeSizeBits;
    seL4_Uint32 initThreadDomain;
} seL4_BootInfo;



void seL4_InitBootInfo(seL4_BootInfo* bi);
seL4_BootInfo* seL4_GetBootInfo(void);
# 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h" 2
# 35 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c" 2
# 47 "/home/mint/seL4/dhs-demo-feb-2018/apps/proxy/src/sos.c"
static size_t sos_debug_print(const void *vData, size_t count) {
    size_t i;
    const char *realdata = vData;
    for (i = 0; i < count; i++)
        seL4_DebugPutChar(realdata[i]);
    return count;
}

size_t sos_write(void *vData, size_t count) {

    return sos_debug_print(vData, count);
}

size_t sos_read(void *vData, size_t count) {

    return 0;
}
