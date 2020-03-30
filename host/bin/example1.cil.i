# 1 "./example1.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./example1.cil.c"
# 15 "../test/example1/example1.c"
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
# 46 "/usr/include/i386/_types.h"
typedef long long __int64_t;
# 71 "/usr/include/sys/_types.h"
typedef __int64_t __darwin_off_t;
# 81 "/usr/include/_stdio.h"
typedef __darwin_off_t fpos_t;
# 92 "/usr/include/_stdio.h"
struct __sbuf {
   unsigned char *_base ;
   int _size ;
};
# 98 "/usr/include/_stdio.h"
struct __sFILEX;
# 98 "/usr/include/_stdio.h"
struct __sFILEX;
# 126 "/usr/include/_stdio.h"
struct __sFILE {
   unsigned char *_p ;
   int _r ;
   int _w ;
   short _flags ;
   short _file ;
   struct __sbuf _bf ;
   int _lbfsize ;
   void *_cookie ;
   int (*_close)(void * ) ;
   int (*_read)(void * , char * , int ) ;
   fpos_t (*_seek)(void * , fpos_t , int ) ;
   int (*_write)(void * , char const * , int ) ;
   struct __sbuf _ub ;
   struct __sFILEX *_extra ;
   int _ur ;
   unsigned char _ubuf[3] ;
   unsigned char _nbuf[1] ;
   struct __sbuf _lb ;
   int _blksize ;
   fpos_t _offset ;
};
# 126 "/usr/include/_stdio.h"
typedef struct __sFILE FILE;
# 202 "./../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 83 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
extern FILE *__stderrp ;
# 169 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
extern int ( fprintf)(FILE * __restrict , char const * __restrict
                                              , ...) ;
# 184 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
extern int ( printf)(char const * __restrict , ...) ;
# 269 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
extern int __swbuf(int , FILE * ) ;
# 278 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
__inline extern int __attribute__((__gnu_inline__)) ( __attribute__((__always_inline__)) __sputc)(int _c ,
                                                                                                   FILE *_p )
{
  unsigned char *tmp ;
  unsigned char tmp___0 ;
  int tmp___1 ;
  int __attribute__((__gnu_inline__)) __retres6 ;

  {
  __CrestCall(2, 1);
  __CrestStore(1, (unsigned long )(& _c));
  __CrestLoad(5, (unsigned long )(& _p->_w), (long long )_p->_w);
  __CrestLoad(4, (unsigned long )0, (long long )1);
  __CrestApply2(3, 1, (long long )(_p->_w - 1));
  __CrestStore(6, (unsigned long )(& _p->_w));
# 279 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
  (_p->_w) --;
  {
  __CrestLoad(9, (unsigned long )(& _p->_w), (long long )_p->_w);
  __CrestLoad(8, (unsigned long )0, (long long )0);
  __CrestApply2(7, 17, (long long )(_p->_w >= 0));
# 279 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
  if (_p->_w >= 0) {
    __CrestBranch(10, 3, 1);
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
    tmp = _p->_p;
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
    (_p->_p) ++;
    __CrestLoad(12, (unsigned long )(& _c), (long long )_c);
    __CrestStore(13, (unsigned long )(& tmp___0));
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
    tmp___0 = (unsigned char )_c;
    __CrestLoad(14, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestStore(15, (unsigned long )tmp);
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
    *tmp = tmp___0;
    __CrestLoad(16, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestStore(17, (unsigned long )(& __retres6));
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
    __retres6 = (int __attribute__((__gnu_inline__)) )tmp___0;
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
    goto return_label;
  } else {
    __CrestBranch(11, 6, 0);
    {
    __CrestLoad(20, (unsigned long )(& _p->_w), (long long )_p->_w);
    __CrestLoad(19, (unsigned long )(& _p->_lbfsize), (long long )_p->_lbfsize);
    __CrestApply2(18, 17, (long long )(_p->_w >= _p->_lbfsize));
# 279 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
    if (_p->_w >= _p->_lbfsize) {
      __CrestBranch(21, 7, 1);
      {
      __CrestLoad(25, (unsigned long )(& _c), (long long )_c);
      __CrestLoad(24, (unsigned long )0, (long long )10);
      __CrestApply2(23, 13, (long long )((int )((char )_c) != 10));
# 279 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
      if ((int )((char )_c) != 10) {
        __CrestBranch(26, 8, 1);
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        tmp = _p->_p;
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        (_p->_p) ++;
        __CrestLoad(28, (unsigned long )(& _c), (long long )_c);
        __CrestStore(29, (unsigned long )(& tmp___0));
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        tmp___0 = (unsigned char )_c;
        __CrestLoad(30, (unsigned long )(& tmp___0), (long long )tmp___0);
        __CrestStore(31, (unsigned long )tmp);
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        *tmp = tmp___0;
        __CrestLoad(32, (unsigned long )(& tmp___0), (long long )tmp___0);
        __CrestStore(33, (unsigned long )(& __retres6));
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        __retres6 = (int __attribute__((__gnu_inline__)) )tmp___0;
# 280 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        goto return_label;
      } else {
        __CrestBranch(27, 11, 0);
        __CrestLoad(34, (unsigned long )(& _c), (long long )_c);
# 282 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        tmp___1 = __swbuf(_c, _p);
        __CrestHandleReturn(36, (long long )tmp___1);
        __CrestStore(35, (unsigned long )(& tmp___1));
        __CrestLoad(37, (unsigned long )(& tmp___1), (long long )tmp___1);
        __CrestStore(38, (unsigned long )(& __retres6));
# 282 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        __retres6 = (int __attribute__((__gnu_inline__)) )tmp___1;
# 282 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
        goto return_label;
      }
      }
    } else {
      __CrestBranch(22, 14, 0);
      __CrestLoad(39, (unsigned long )(& _c), (long long )_c);
# 282 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
      tmp___1 = __swbuf(_c, _p);
      __CrestHandleReturn(41, (long long )tmp___1);
      __CrestStore(40, (unsigned long )(& tmp___1));
      __CrestLoad(42, (unsigned long )(& tmp___1), (long long )tmp___1);
      __CrestStore(43, (unsigned long )(& __retres6));
# 282 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
      __retres6 = (int __attribute__((__gnu_inline__)) )tmp___1;
# 282 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
      goto return_label;
    }
    }
  }
  }
  return_label:
  {
  __CrestLoad(44, (unsigned long )(& __retres6), (long long )__retres6);
  __CrestReturn(45);
# 278 "/opt/local/lib/gcc5/gcc/x86_64-apple-darwin17/5.5.0/include-fixed/stdio.h"
  return (__retres6);
  }
}
}
# 15 "../test/example1/example1.c"
int main(void)
{
  int a ;
  int b ;
  int c ;
  int __retres4 ;

  {
  __globinit_example1();
  __CrestCall(46, 2);
  __CrestLoad(47, (unsigned long )0, (long long )0);
  __CrestStore(48, (unsigned long )(& a));
# 16 "../test/example1/example1.c"
  a = 0;
  __CrestLoad(49, (unsigned long )0, (long long )0);
  __CrestStore(50, (unsigned long )(& b));
# 16 "../test/example1/example1.c"
  b = 0;
  __CrestLoad(51, (unsigned long )0, (long long )0);
  __CrestStore(52, (unsigned long )(& c));
# 16 "../test/example1/example1.c"
  c = 0;
# 18 "../test/example1/example1.c"
  __CrestInt(& a);
  __CrestLoad(53, (unsigned long )(& a), (long long )a);
# 18 "../test/example1/example1.c"
  fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", a);
  __CrestClearStack(54);
# 19 "../test/example1/example1.c"
  __CrestInt(& b);
  __CrestLoad(55, (unsigned long )(& b), (long long )b);
# 19 "../test/example1/example1.c"
  fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", b);
  __CrestClearStack(56);
  __CrestLoad(61, (unsigned long )0, (long long )3);
  __CrestLoad(60, (unsigned long )(& a), (long long )a);
  __CrestApply2(59, 2, (long long )(3 * a));
  __CrestLoad(58, (unsigned long )(& b), (long long )b);
  __CrestApply2(57, 0, (long long )(3 * a + b));
  __CrestStore(62, (unsigned long )(& c));
# 21 "../test/example1/example1.c"
  c = 3 * a + b;
  __CrestLoad(65, (unsigned long )(& a), (long long )a);
  __CrestLoad(64, (unsigned long )0, (long long )0);
  __CrestApply2(63, 16, (long long )(a < 0));
# 23 "../test/example1/example1.c"
  if (a < 0) {
    __CrestBranch(66, 20, 1);
# 24 "../test/example1/example1.c"
    printf((char const * __restrict )"@L0");
    __CrestClearStack(68);
  } else {
    __CrestBranch(67, 21, 0);
    {
    __CrestLoad(71, (unsigned long )(& b), (long long )b);
    __CrestLoad(70, (unsigned long )0, (long long )8);
    __CrestApply2(69, 14, (long long )(b > 8));
# 27 "../test/example1/example1.c"
    if (b > 8) {
      __CrestBranch(72, 22, 1);
# 28 "../test/example1/example1.c"
      printf((char const * __restrict )"@L1");
      __CrestClearStack(74);
    } else {
      __CrestBranch(73, 23, 0);
      {
      __CrestLoad(77, (unsigned long )(& c), (long long )c);
      __CrestLoad(76, (unsigned long )0, (long long )0);
      __CrestApply2(75, 14, (long long )(c > 0));
# 31 "../test/example1/example1.c"
      if (c > 0) {
        __CrestBranch(78, 24, 1);
# 32 "../test/example1/example1.c"
        printf((char const * __restrict )"@L2");
        __CrestClearStack(80);
      } else {
        __CrestBranch(79, 25, 0);
        {
        __CrestLoad(85, (unsigned long )(& a), (long long )a);
        __CrestLoad(84, (unsigned long )(& b), (long long )b);
        __CrestApply2(83, 0, (long long )(a + b));
        __CrestLoad(82, (unsigned long )0, (long long )10);
        __CrestApply2(81, 16, (long long )(a + b < 10));
# 35 "../test/example1/example1.c"
        if (a + b < 10) {
          __CrestBranch(86, 26, 1);
# 36 "../test/example1/example1.c"
          printf((char const * __restrict )"@L3");
          __CrestClearStack(88);
        } else {
          __CrestBranch(87, 27, 0);
# 39 "../test/example1/example1.c"
          printf((char const * __restrict )"@L4");
          __CrestClearStack(89);
        }
        }
      }
      }
    }
    }
  }
# 44 "../test/example1/example1.c"
  printf((char const * __restrict )"\n");
  __CrestClearStack(90);
  __CrestLoad(91, (unsigned long )0, (long long )0);
  __CrestStore(92, (unsigned long )(& __retres4));
# 45 "../test/example1/example1.c"
  __retres4 = 0;
  __CrestLoad(93, (unsigned long )(& __retres4), (long long )__retres4);
  __CrestReturn(94);
# 15 "../test/example1/example1.c"
  return (__retres4);
}
}
void __globinit_example1(void)
{


  {
  __CrestInit();
}
}
