# 1 "./example1.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./example1.cil.c"
# 15 "example1.c"
void __globinit_example1(void) ;
extern void __CrestInit(void) __attribute__((__crest_skip__)) ;
extern void __CrestHandleReturn(int id , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestReturn(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestCall(int id , unsigned int fid ) __attribute__((__crest_skip__)) ;
extern void __CrestBranch(int id , int bid , unsigned char b ) __attribute__((__crest_skip__)) ;
extern void __CrestApply2(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestClearStack(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestStore(int id , unsigned long addr ) __attribute__((__crest_skip__)) ;
extern void __CrestLoad(int id , unsigned long addr , long long val ) __attribute__((__crest_skip__)) ;
# 216 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stddef.h"
typedef unsigned int size_t;
# 65 "/usr/include/arm-linux-gnueabihf/bits/types.h"
typedef long long __quad_t;
# 150 "/usr/include/arm-linux-gnueabihf/bits/types.h"
typedef long __off_t;
# 151 "/usr/include/arm-linux-gnueabihf/bits/types.h"
typedef __quad_t __off64_t;
# 4 "/usr/include/arm-linux-gnueabihf/bits/types/__FILE.h"
struct _IO_FILE;
# 4 "/usr/include/arm-linux-gnueabihf/bits/types/__FILE.h"
struct _IO_FILE;
# 4 "/usr/include/arm-linux-gnueabihf/bits/types/FILE.h"
struct _IO_FILE;
# 7 "/usr/include/arm-linux-gnueabihf/bits/types/FILE.h"
typedef struct _IO_FILE FILE;
# 35 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_FILE;
# 36 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_marker;
# 36 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_marker;
# 37 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_codecvt;
# 37 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_codecvt;
# 38 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_wide_data;
# 38 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_wide_data;
# 43 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
typedef void _IO_lock_t;
# 49 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   struct _IO_codecvt *_codecvt ;
   struct _IO_wide_data *_wide_data ;
   struct _IO_FILE *_freeres_list ;
   void *_freeres_buf ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15U * sizeof(int ) - 4U * sizeof(void *)) - sizeof(size_t )] ;
};
# 202 "/home/pi/crest/bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 139 "/usr/include/stdio.h"
extern FILE *stderr ;
# 326 "/usr/include/stdio.h"
extern int fprintf(FILE * __restrict __stream , char const * __restrict __format
                   , ...) ;
# 332 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 15 "example1.c"
int main(void)
{
  int a ;
  int b ;
  int c ;
  int i ;
  int __retres5 ;

  {
  __globinit_example1();
  __CrestCall(1, 1);
  __CrestLoad(2, (unsigned long )0, (long long )0);
  __CrestStore(3, (unsigned long )(& a));
# 16 "example1.c"
  a = 0;
  __CrestLoad(4, (unsigned long )0, (long long )0);
  __CrestStore(5, (unsigned long )(& b));
# 16 "example1.c"
  b = 0;
  __CrestLoad(6, (unsigned long )0, (long long )0);
  __CrestStore(7, (unsigned long )(& c));
# 16 "example1.c"
  c = 0;
  __CrestLoad(8, (unsigned long )0, (long long )0);
  __CrestStore(9, (unsigned long )(& i));
# 18 "example1.c"
  i = 0;
# 18 "example1.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(12, (unsigned long )(& i), (long long )i);
    __CrestLoad(11, (unsigned long )0, (long long )3);
    __CrestApply2(10, 16, (long long )(i < 3));
# 18 "example1.c"
    if (i < 3) {
      __CrestBranch(13, 6, 1);

    } else {
      __CrestBranch(14, 7, 0);
# 18 "example1.c"
      goto while_break;
    }
    }
# 20 "example1.c"
    __CrestInt(& a);
    __CrestLoad(15, (unsigned long )(& a), (long long )a);
# 20 "example1.c"
    fprintf((FILE * __restrict )stderr, (char const * __restrict )"%d\n", a);
    __CrestClearStack(16);
# 21 "example1.c"
    __CrestInt(& b);
    __CrestLoad(17, (unsigned long )(& b), (long long )b);
# 21 "example1.c"
    fprintf((FILE * __restrict )stderr, (char const * __restrict )"%d\n", b);
    __CrestClearStack(18);
    __CrestLoad(23, (unsigned long )0, (long long )3);
    __CrestLoad(22, (unsigned long )(& a), (long long )a);
    __CrestApply2(21, 2, (long long )(3 * a));
    __CrestLoad(20, (unsigned long )(& b), (long long )b);
    __CrestApply2(19, 0, (long long )(3 * a + b));
    __CrestStore(24, (unsigned long )(& c));
# 23 "example1.c"
    c = 3 * a + b;
    {
    __CrestLoad(27, (unsigned long )(& a), (long long )a);
    __CrestLoad(26, (unsigned long )0, (long long )0);
    __CrestApply2(25, 16, (long long )(a < 0));
# 26 "example1.c"
    if (a < 0) {
      __CrestBranch(28, 10, 1);
# 27 "example1.c"
      printf((char const * __restrict )"@L0");
      __CrestClearStack(30);
    } else {
      __CrestBranch(29, 11, 0);
      {
      __CrestLoad(33, (unsigned long )(& b), (long long )b);
      __CrestLoad(32, (unsigned long )0, (long long )8);
      __CrestApply2(31, 14, (long long )(b > 8));
# 30 "example1.c"
      if (b > 8) {
        __CrestBranch(34, 12, 1);
# 31 "example1.c"
        printf((char const * __restrict )"@L1");
        __CrestClearStack(36);
      } else {
        __CrestBranch(35, 13, 0);
        {
        __CrestLoad(39, (unsigned long )(& c), (long long )c);
        __CrestLoad(38, (unsigned long )0, (long long )0);
        __CrestApply2(37, 14, (long long )(c > 0));
# 34 "example1.c"
        if (c > 0) {
          __CrestBranch(40, 14, 1);
# 35 "example1.c"
          printf((char const * __restrict )"@L2");
          __CrestClearStack(42);
        } else {
          __CrestBranch(41, 15, 0);
          {
          __CrestLoad(47, (unsigned long )(& a), (long long )a);
          __CrestLoad(46, (unsigned long )(& b), (long long )b);
          __CrestApply2(45, 0, (long long )(a + b));
          __CrestLoad(44, (unsigned long )0, (long long )10);
          __CrestApply2(43, 16, (long long )(a + b < 10));
# 38 "example1.c"
          if (a + b < 10) {
            __CrestBranch(48, 16, 1);
# 39 "example1.c"
            printf((char const * __restrict )"@L3");
            __CrestClearStack(50);
          } else {
            __CrestBranch(49, 17, 0);
# 42 "example1.c"
            printf((char const * __restrict )"@L4");
            __CrestClearStack(51);
          }
          }
        }
        }
      }
      }
    }
    }
    __CrestLoad(54, (unsigned long )(& i), (long long )i);
    __CrestLoad(53, (unsigned long )0, (long long )1);
    __CrestApply2(52, 0, (long long )(i + 1));
    __CrestStore(55, (unsigned long )(& i));
# 18 "example1.c"
    i ++;
  }
  while_break:
# 48 "example1.c"
  printf((char const * __restrict )"\n");
  __CrestClearStack(56);
  __CrestLoad(57, (unsigned long )0, (long long )0);
  __CrestStore(58, (unsigned long )(& __retres5));
# 49 "example1.c"
  __retres5 = 0;
  __CrestLoad(59, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(60);
# 15 "example1.c"
  return (__retres5);
}
}
void __globinit_example1(void)
{


  {
  __CrestInit();
}
}
