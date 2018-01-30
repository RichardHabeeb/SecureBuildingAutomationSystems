/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

#ifndef _UTILS_ATTRIBUTE_H
#define _UTILS_ATTRIBUTE_H
/* macros for compile time attributes */

#define ALIGN(n)     __attribute__((__aligned__(n)))
#define ALLOC_SIZE(args...) __attribute__((alloc_size(args)))
#define ASSUME_ALIGNED(args...) __attribute__((assume_aligned(args)))
#define NO_INLINE        __attribute__((noinline))
#define ALWAYS_INLINE __attribute__((always_inline))
#define CLEANUP(fn)  __attribute__((cleanup(fn)))
#define DEPRECATED(msg) __attribute__((deprecated(msg)))
#define ERROR(msg)   __attribute__((error(msg)))
#define MALLOC       __attribute__((malloc))
#define NONNULL(args...) __attribute__((__nonnull__(args)))
#define NONNULL_ALL  __attribute__((__nonnull__))
#define NORETURN     __attribute__((__noreturn__))
#define PACKED       __attribute__((__packed__))
#define SENTINEL(param) __attribute__((sentinel(param)))
#define SENTINEL_LAST __attribute__((sentinel))
#define UNUSED       __attribute__((__unused__))
#define USED         __attribute__((__used__))
#define VISIBLE      __attribute__((__externally_visible__))
#define WARNING(msg) __attribute__((warning(msg)))
#define WARN_UNUSED_RESULT __attribute__((warn_unused_result))

/* Stub out __has_attribute on GCC and friends where this feature macro is
 * unavailable.
 */
#ifndef __has_attribute
  #define __has_attribute(x) 0
#endif

/* alloc_align was added to GCC in 4.9 */
#if __has_attribute(alloc_align) || (defined(__GNUC__) && (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 9)))
  #define ALLOC_ALIGN(arg) __attribute__((alloc_align(arg)))
#else
  #define ALLOC_ALIGN(arg) /* ignored */
#endif

/* returns_nonnull was added to GCC in 4.9 */
#if __has_attribute(returns_nonnull) || (defined(__GNUC__) && (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 9)))
  #define RETURNS_NONNULL __attribute__((returns_nonnull))
#else
  #define RETURNS_NONNULL /* ignored */
#endif

/* A special case for libsel4 so we can avoid depending on this library.
 * If any other library is caught doing this it will be immolated. */
#ifndef __LIBSEL4_MACROS_H
#define PURE         __attribute__((__pure__))
#define CONST        __attribute__((__const__))
#endif /* __LIBSEL4_MACROS_H */ 

#endif /* _UTILS_ATTRIBUTE_H */

