# 1 "./triangle.crest.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./triangle.crest.cil.c"
# 5 "triangle.crest.c"
void __globinit_triangle_crest(void) ;
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
# 150 "/usr/include/stdlib.h"
extern __attribute__((__noreturn__)) void exit(int ) ;
# 202 "/Users/leemhyerin/Desktop/mi/crest/bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 5 "triangle.crest.c"
int main(void)
{
  int a ;
  int b ;
  int c ;
  int match ;
  char *category[4] ;
  int result ;
  int __retres7 ;

  {
  __globinit_triangle_crest();
  __CrestCall(46, 2);
  __CrestLoad(47, (unsigned long )0, (long long )0);
  __CrestStore(48, (unsigned long )(& a));
# 8 "triangle.crest.c"
  a = 0;
  __CrestLoad(49, (unsigned long )0, (long long )0);
  __CrestStore(50, (unsigned long )(& b));
# 8 "triangle.crest.c"
  b = 0;
  __CrestLoad(51, (unsigned long )0, (long long )0);
  __CrestStore(52, (unsigned long )(& c));
# 8 "triangle.crest.c"
  c = 0;
  __CrestLoad(53, (unsigned long )0, (long long )0);
  __CrestStore(54, (unsigned long )(& match));
# 9 "triangle.crest.c"
  match = 0;
# 11 "triangle.crest.c"
  category[0] = (char *)"Equilateral";
# 11 "triangle.crest.c"
  category[1] = (char *)"Isosceles";
# 11 "triangle.crest.c"
  category[2] = (char *)"Not a triangle";
# 11 "triangle.crest.c"
  category[3] = (char *)"Scalene";
# 13 "triangle.crest.c"
  __CrestInt(& a);
  __CrestLoad(55, (unsigned long )(& a), (long long )a);
# 13 "triangle.crest.c"
  fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", a);
  __CrestClearStack(56);
# 14 "triangle.crest.c"
  __CrestInt(& b);
  __CrestLoad(57, (unsigned long )(& b), (long long )b);
# 14 "triangle.crest.c"
  fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", b);
  __CrestClearStack(58);
# 15 "triangle.crest.c"
  __CrestInt(& c);
  __CrestLoad(59, (unsigned long )(& c), (long long )c);
# 15 "triangle.crest.c"
  fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", c);
  __CrestClearStack(60);
  __CrestLoad(63, (unsigned long )(& a), (long long )a);
  __CrestLoad(62, (unsigned long )0, (long long )0);
  __CrestApply2(61, 15, (long long )(a <= 0));
# 17 "triangle.crest.c"
  if (a <= 0) {
    __CrestBranch(64, 20, 1);
# 18 "triangle.crest.c"
    printf((char const * __restrict )"@L0\n");
    __CrestClearStack(66);
    __CrestLoad(67, (unsigned long )0, (long long )0);
# 19 "triangle.crest.c"
    exit(0);
    __CrestClearStack(68);
  } else {
    __CrestBranch(65, 21, 0);
    {
    __CrestLoad(71, (unsigned long )(& b), (long long )b);
    __CrestLoad(70, (unsigned long )0, (long long )0);
    __CrestApply2(69, 15, (long long )(b <= 0));
# 17 "triangle.crest.c"
    if (b <= 0) {
      __CrestBranch(72, 22, 1);
# 18 "triangle.crest.c"
      printf((char const * __restrict )"@L0\n");
      __CrestClearStack(74);
      __CrestLoad(75, (unsigned long )0, (long long )0);
# 19 "triangle.crest.c"
      exit(0);
      __CrestClearStack(76);
    } else {
      __CrestBranch(73, 23, 0);
      {
      __CrestLoad(79, (unsigned long )(& c), (long long )c);
      __CrestLoad(78, (unsigned long )0, (long long )0);
      __CrestApply2(77, 15, (long long )(c <= 0));
# 17 "triangle.crest.c"
      if (c <= 0) {
        __CrestBranch(80, 24, 1);
# 18 "triangle.crest.c"
        printf((char const * __restrict )"@L0\n");
        __CrestClearStack(82);
        __CrestLoad(83, (unsigned long )0, (long long )0);
# 19 "triangle.crest.c"
        exit(0);
        __CrestClearStack(84);
      } else {
        __CrestBranch(81, 25, 0);

      }
      }
    }
    }
  }
  __CrestLoad(85, (unsigned long )0, (long long )-1);
  __CrestStore(86, (unsigned long )(& result));
# 22 "triangle.crest.c"
  result = -1;
  __CrestLoad(89, (unsigned long )(& a), (long long )a);
  __CrestLoad(88, (unsigned long )(& b), (long long )b);
  __CrestApply2(87, 12, (long long )(a == b));
# 24 "triangle.crest.c"
  if (a == b) {
    __CrestBranch(90, 28, 1);
    __CrestLoad(94, (unsigned long )(& match), (long long )match);
    __CrestLoad(93, (unsigned long )0, (long long )1);
    __CrestApply2(92, 0, (long long )(match + 1));
    __CrestStore(95, (unsigned long )(& match));
# 25 "triangle.crest.c"
    match ++;
  } else {
    __CrestBranch(91, 29, 0);

  }
  __CrestLoad(98, (unsigned long )(& a), (long long )a);
  __CrestLoad(97, (unsigned long )(& c), (long long )c);
  __CrestApply2(96, 12, (long long )(a == c));
# 26 "triangle.crest.c"
  if (a == c) {
    __CrestBranch(99, 31, 1);
    __CrestLoad(103, (unsigned long )(& match), (long long )match);
    __CrestLoad(102, (unsigned long )0, (long long )2);
    __CrestApply2(101, 0, (long long )(match + 2));
    __CrestStore(104, (unsigned long )(& match));
# 27 "triangle.crest.c"
    match += 2;
  } else {
    __CrestBranch(100, 32, 0);

  }
  __CrestLoad(107, (unsigned long )(& b), (long long )b);
  __CrestLoad(106, (unsigned long )(& c), (long long )c);
  __CrestApply2(105, 12, (long long )(b == c));
# 28 "triangle.crest.c"
  if (b == c) {
    __CrestBranch(108, 34, 1);
    __CrestLoad(112, (unsigned long )(& match), (long long )match);
    __CrestLoad(111, (unsigned long )0, (long long )3);
    __CrestApply2(110, 0, (long long )(match + 3));
    __CrestStore(113, (unsigned long )(& match));
# 29 "triangle.crest.c"
    match += 3;
  } else {
    __CrestBranch(109, 35, 0);

  }
  __CrestLoad(116, (unsigned long )(& match), (long long )match);
  __CrestLoad(115, (unsigned long )0, (long long )0);
  __CrestApply2(114, 12, (long long )(match == 0));
# 30 "triangle.crest.c"
  if (match == 0) {
    __CrestBranch(117, 37, 1);
    {
    __CrestLoad(123, (unsigned long )(& a), (long long )a);
    __CrestLoad(122, (unsigned long )(& b), (long long )b);
    __CrestApply2(121, 0, (long long )(a + b));
    __CrestLoad(120, (unsigned long )(& c), (long long )c);
    __CrestApply2(119, 15, (long long )(a + b <= c));
# 31 "triangle.crest.c"
    if (a + b <= c) {
      __CrestBranch(124, 38, 1);
      __CrestLoad(126, (unsigned long )0, (long long )2);
      __CrestStore(127, (unsigned long )(& result));
# 32 "triangle.crest.c"
      result = 2;
# 33 "triangle.crest.c"
      printf((char const * __restrict )"@L1\n");
      __CrestClearStack(128);
    } else {
      __CrestBranch(125, 39, 0);
      {
      __CrestLoad(133, (unsigned long )(& b), (long long )b);
      __CrestLoad(132, (unsigned long )(& c), (long long )c);
      __CrestApply2(131, 0, (long long )(b + c));
      __CrestLoad(130, (unsigned long )(& a), (long long )a);
      __CrestApply2(129, 15, (long long )(b + c <= a));
# 35 "triangle.crest.c"
      if (b + c <= a) {
        __CrestBranch(134, 40, 1);
        __CrestLoad(136, (unsigned long )0, (long long )2);
        __CrestStore(137, (unsigned long )(& result));
# 36 "triangle.crest.c"
        result = 2;
# 37 "triangle.crest.c"
        printf((char const * __restrict )"@L2\n");
        __CrestClearStack(138);
      } else {
        __CrestBranch(135, 41, 0);
        {
        __CrestLoad(143, (unsigned long )(& a), (long long )a);
        __CrestLoad(142, (unsigned long )(& c), (long long )c);
        __CrestApply2(141, 0, (long long )(a + c));
        __CrestLoad(140, (unsigned long )(& b), (long long )b);
        __CrestApply2(139, 15, (long long )(a + c <= b));
# 39 "triangle.crest.c"
        if (a + c <= b) {
          __CrestBranch(144, 42, 1);
          __CrestLoad(146, (unsigned long )0, (long long )2);
          __CrestStore(147, (unsigned long )(& result));
# 40 "triangle.crest.c"
          result = 2;
# 41 "triangle.crest.c"
          printf((char const * __restrict )"@L3\n");
          __CrestClearStack(148);
        } else {
          __CrestBranch(145, 43, 0);
          __CrestLoad(149, (unsigned long )0, (long long )3);
          __CrestStore(150, (unsigned long )(& result));
# 44 "triangle.crest.c"
          result = 3;
# 45 "triangle.crest.c"
          printf((char const * __restrict )"@L4\n");
          __CrestClearStack(151);
        }
        }
      }
      }
    }
    }
  } else {
    __CrestBranch(118, 44, 0);
    {
    __CrestLoad(154, (unsigned long )(& match), (long long )match);
    __CrestLoad(153, (unsigned long )0, (long long )1);
    __CrestApply2(152, 12, (long long )(match == 1));
# 49 "triangle.crest.c"
    if (match == 1) {
      __CrestBranch(155, 45, 1);
      {
      __CrestLoad(161, (unsigned long )(& a), (long long )a);
      __CrestLoad(160, (unsigned long )(& b), (long long )b);
      __CrestApply2(159, 0, (long long )(a + b));
      __CrestLoad(158, (unsigned long )(& c), (long long )c);
      __CrestApply2(157, 15, (long long )(a + b <= c));
# 50 "triangle.crest.c"
      if (a + b <= c) {
        __CrestBranch(162, 46, 1);
        __CrestLoad(164, (unsigned long )0, (long long )2);
        __CrestStore(165, (unsigned long )(& result));
# 51 "triangle.crest.c"
        result = 2;
# 52 "triangle.crest.c"
        printf((char const * __restrict )"@L5\n");
        __CrestClearStack(166);
      } else {
        __CrestBranch(163, 47, 0);
        __CrestLoad(167, (unsigned long )0, (long long )1);
        __CrestStore(168, (unsigned long )(& result));
# 55 "triangle.crest.c"
        result = 1;
# 56 "triangle.crest.c"
        printf((char const * __restrict )"@L6\n");
        __CrestClearStack(169);
      }
      }
    } else {
      __CrestBranch(156, 48, 0);
      {
      __CrestLoad(172, (unsigned long )(& match), (long long )match);
      __CrestLoad(171, (unsigned long )0, (long long )2);
      __CrestApply2(170, 12, (long long )(match == 2));
# 60 "triangle.crest.c"
      if (match == 2) {
        __CrestBranch(173, 49, 1);
        {
        __CrestLoad(179, (unsigned long )(& a), (long long )a);
        __CrestLoad(178, (unsigned long )(& c), (long long )c);
        __CrestApply2(177, 0, (long long )(a + c));
        __CrestLoad(176, (unsigned long )(& b), (long long )b);
        __CrestApply2(175, 15, (long long )(a + c <= b));
# 61 "triangle.crest.c"
        if (a + c <= b) {
          __CrestBranch(180, 50, 1);
          __CrestLoad(182, (unsigned long )0, (long long )2);
          __CrestStore(183, (unsigned long )(& result));
# 62 "triangle.crest.c"
          result = 2;
# 63 "triangle.crest.c"
          printf((char const * __restrict )"L7\n");
          __CrestClearStack(184);
        } else {
          __CrestBranch(181, 51, 0);
          __CrestLoad(185, (unsigned long )0, (long long )1);
          __CrestStore(186, (unsigned long )(& result));
# 66 "triangle.crest.c"
          result = 1;
# 67 "triangle.crest.c"
          printf((char const * __restrict )"L8\n");
          __CrestClearStack(187);
        }
        }
      } else {
        __CrestBranch(174, 52, 0);
        {
        __CrestLoad(190, (unsigned long )(& match), (long long )match);
        __CrestLoad(189, (unsigned long )0, (long long )3);
        __CrestApply2(188, 12, (long long )(match == 3));
# 71 "triangle.crest.c"
        if (match == 3) {
          __CrestBranch(191, 53, 1);
          {
          __CrestLoad(197, (unsigned long )(& b), (long long )b);
          __CrestLoad(196, (unsigned long )(& c), (long long )c);
          __CrestApply2(195, 0, (long long )(b + c));
          __CrestLoad(194, (unsigned long )(& a), (long long )a);
          __CrestApply2(193, 15, (long long )(b + c <= a));
# 72 "triangle.crest.c"
          if (b + c <= a) {
            __CrestBranch(198, 54, 1);
            __CrestLoad(200, (unsigned long )0, (long long )2);
            __CrestStore(201, (unsigned long )(& result));
# 73 "triangle.crest.c"
            result = 2;
# 74 "triangle.crest.c"
            printf((char const * __restrict )"@L9\n");
            __CrestClearStack(202);
          } else {
            __CrestBranch(199, 55, 0);
            __CrestLoad(203, (unsigned long )0, (long long )1);
            __CrestStore(204, (unsigned long )(& result));
# 77 "triangle.crest.c"
            result = 1;
# 78 "triangle.crest.c"
            printf((char const * __restrict )"@L10\n");
            __CrestClearStack(205);
          }
          }
        } else {
          __CrestBranch(192, 56, 0);
          __CrestLoad(206, (unsigned long )0, (long long )0);
          __CrestStore(207, (unsigned long )(& result));
# 82 "triangle.crest.c"
          result = 0;
# 83 "triangle.crest.c"
          printf((char const * __restrict )"@L11\n");
          __CrestClearStack(208);
        }
        }
      }
      }
    }
    }
  }
# 88 "triangle.crest.c"
  printf((char const * __restrict )"%s\n", category[result]);
  __CrestClearStack(209);
  __CrestLoad(210, (unsigned long )0, (long long )0);
  __CrestStore(211, (unsigned long )(& __retres7));
# 89 "triangle.crest.c"
  __retres7 = 0;
  __CrestLoad(212, (unsigned long )(& __retres7), (long long )__retres7);
  __CrestReturn(213);
# 5 "triangle.crest.c"
  return (__retres7);
}
}
void __globinit_triangle_crest(void)
{


  {
  __CrestInit();
}
}
