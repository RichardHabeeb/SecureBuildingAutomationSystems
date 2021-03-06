/* @LICENSE(MUSLC_MIT) */

#include <sys/stat.h>
#include "internal/syscall.h"
#include "libc.h"

int stat(const char *path, struct stat *buf)
{
	return syscall(SYS_stat, path, buf);
}

LFS64(stat);
