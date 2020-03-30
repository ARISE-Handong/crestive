# 1 "./btree.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./btree.cil.c"
# 318 "btree.c"
void __globinit_btree(void) ;
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
# 92 "/usr/include/i386/_types.h"
typedef unsigned long __darwin_size_t;
# 71 "/usr/include/sys/_types.h"
typedef __int64_t __darwin_off_t;
# 31 "/usr/include/sys/_types/_size_t.h"
typedef __darwin_size_t size_t;
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
# 10 "btree.c"
struct btreeNode {
   int val[5] ;
   int count ;
   struct btreeNode *link[5] ;
};
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
# 151 "/usr/include/stdlib.h"
extern void free(void * ) ;
# 160 "/usr/include/stdlib.h"
extern void *( __attribute__((__warn_unused_result__)) malloc)(size_t __size ) __attribute__((__alloc_size__(1))) ;
# 202 "/Users/leemhyerin/Desktop/mi/crest/bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 15 "btree.c"
struct btreeNode *root ;
# 18 "btree.c"
struct btreeNode *createNode(int val , struct btreeNode *child )
{
  struct btreeNode *newNode ;
  void *tmp ;

  {
  __CrestCall(47, 2);
  __CrestStore(46, (unsigned long )(& val));
  __CrestLoad(48, (unsigned long )0, (long long )sizeof(struct btreeNode ));
# 20 "btree.c"
  tmp = malloc(sizeof(struct btreeNode ));
  __CrestClearStack(49);
# 20 "btree.c"
  newNode = (struct btreeNode *)tmp;
  __CrestLoad(50, (unsigned long )(& val), (long long )val);
  __CrestStore(51, (unsigned long )(& newNode->val[1]));
# 21 "btree.c"
  newNode->val[1] = val;
  __CrestLoad(52, (unsigned long )0, (long long )1);
  __CrestStore(53, (unsigned long )(& newNode->count));
# 22 "btree.c"
  newNode->count = 1;
# 23 "btree.c"
  newNode->link[0] = root;
# 24 "btree.c"
  newNode->link[1] = child;
  {
  __CrestReturn(54);
# 25 "btree.c"
  return (newNode);
  }
}
}
# 29 "btree.c"
void addValToNode(int val , int pos , struct btreeNode *node , struct btreeNode *child )
{
  int j ;

  {
  __CrestCall(57, 3);
  __CrestStore(56, (unsigned long )(& pos));
  __CrestStore(55, (unsigned long )(& val));
  __CrestLoad(58, (unsigned long )(& node->count), (long long )node->count);
  __CrestStore(59, (unsigned long )(& j));
# 31 "btree.c"
  j = node->count;
  {
# 32 "btree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(62, (unsigned long )(& j), (long long )j);
    __CrestLoad(61, (unsigned long )(& pos), (long long )pos);
    __CrestApply2(60, 14, (long long )(j > pos));
# 32 "btree.c"
    if (j > pos) {
      __CrestBranch(63, 25, 1);

    } else {
      __CrestBranch(64, 26, 0);
# 32 "btree.c"
      goto while_break;
    }
    }
    __CrestLoad(65, (unsigned long )(& node->val[j]), (long long )node->val[j]);
    __CrestStore(66, (unsigned long )(& node->val[j + 1]));
# 33 "btree.c"
    node->val[j + 1] = node->val[j];
# 34 "btree.c"
    node->link[j + 1] = node->link[j];
    __CrestLoad(69, (unsigned long )(& j), (long long )j);
    __CrestLoad(68, (unsigned long )0, (long long )1);
    __CrestApply2(67, 1, (long long )(j - 1));
    __CrestStore(70, (unsigned long )(& j));
# 35 "btree.c"
    j --;
  }
  while_break: ;
  }
  __CrestLoad(71, (unsigned long )(& val), (long long )val);
  __CrestStore(72, (unsigned long )(& node->val[j + 1]));
# 37 "btree.c"
  node->val[j + 1] = val;
# 38 "btree.c"
  node->link[j + 1] = child;
  __CrestLoad(75, (unsigned long )(& node->count), (long long )node->count);
  __CrestLoad(74, (unsigned long )0, (long long )1);
  __CrestApply2(73, 0, (long long )(node->count + 1));
  __CrestStore(76, (unsigned long )(& node->count));
# 39 "btree.c"
  (node->count) ++;

  {
  __CrestReturn(77);
# 29 "btree.c"
  return;
  }
}
}
# 43 "btree.c"
void splitNode(int val , int *pval , int pos , struct btreeNode *node , struct btreeNode *child ,
               struct btreeNode **newNode )
{
  int median ;
  int j ;
  void *tmp ;
  struct btreeNode *mem_10 ;
  struct btreeNode *mem_11 ;
  struct btreeNode *mem_12 ;
  struct btreeNode *mem_13 ;

  {
  __CrestCall(80, 4);
  __CrestStore(79, (unsigned long )(& pos));
  __CrestStore(78, (unsigned long )(& val));
  {
  __CrestLoad(83, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(82, (unsigned long )0, (long long )2);
  __CrestApply2(81, 14, (long long )(pos > 2));
# 47 "btree.c"
  if (pos > 2) {
    __CrestBranch(84, 33, 1);
    __CrestLoad(86, (unsigned long )0, (long long )3);
    __CrestStore(87, (unsigned long )(& median));
# 48 "btree.c"
    median = 3;
  } else {
    __CrestBranch(85, 34, 0);
    __CrestLoad(88, (unsigned long )0, (long long )2);
    __CrestStore(89, (unsigned long )(& median));
# 50 "btree.c"
    median = 2;
  }
  }
  __CrestLoad(90, (unsigned long )0, (long long )sizeof(struct btreeNode ));
# 52 "btree.c"
  tmp = malloc(sizeof(struct btreeNode ));
  __CrestClearStack(91);
# 52 "btree.c"
  *newNode = (struct btreeNode *)tmp;
  __CrestLoad(94, (unsigned long )(& median), (long long )median);
  __CrestLoad(93, (unsigned long )0, (long long )1);
  __CrestApply2(92, 0, (long long )(median + 1));
  __CrestStore(95, (unsigned long )(& j));
# 53 "btree.c"
  j = median + 1;
  {
# 54 "btree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(98, (unsigned long )(& j), (long long )j);
    __CrestLoad(97, (unsigned long )0, (long long )4);
    __CrestApply2(96, 15, (long long )(j <= 4));
# 54 "btree.c"
    if (j <= 4) {
      __CrestBranch(99, 40, 1);

    } else {
      __CrestBranch(100, 41, 0);
# 54 "btree.c"
      goto while_break;
    }
    }
# 55 "btree.c"
    mem_10 = *newNode;
    __CrestLoad(101, (unsigned long )(& node->val[j]), (long long )node->val[j]);
    __CrestStore(102, (unsigned long )(& mem_10->val[j - median]));
# 55 "btree.c"
    mem_10->val[j - median] = node->val[j];
# 56 "btree.c"
    mem_11 = *newNode;
# 56 "btree.c"
    mem_11->link[j - median] = node->link[j];
    __CrestLoad(105, (unsigned long )(& j), (long long )j);
    __CrestLoad(104, (unsigned long )0, (long long )1);
    __CrestApply2(103, 0, (long long )(j + 1));
    __CrestStore(106, (unsigned long )(& j));
# 57 "btree.c"
    j ++;
  }
  while_break: ;
  }
  __CrestLoad(107, (unsigned long )(& median), (long long )median);
  __CrestStore(108, (unsigned long )(& node->count));
# 59 "btree.c"
  node->count = median;
# 60 "btree.c"
  mem_12 = *newNode;
  __CrestLoad(111, (unsigned long )0, (long long )4);
  __CrestLoad(110, (unsigned long )(& median), (long long )median);
  __CrestApply2(109, 1, (long long )(4 - median));
  __CrestStore(112, (unsigned long )(& mem_12->count));
# 60 "btree.c"
  mem_12->count = 4 - median;
  {
  __CrestLoad(115, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(114, (unsigned long )0, (long long )2);
  __CrestApply2(113, 15, (long long )(pos <= 2));
# 62 "btree.c"
  if (pos <= 2) {
    __CrestBranch(116, 46, 1);
    __CrestLoad(118, (unsigned long )(& val), (long long )val);
    __CrestLoad(119, (unsigned long )(& pos), (long long )pos);
# 63 "btree.c"
    addValToNode(val, pos, node, child);
    __CrestClearStack(120);
  } else {
    __CrestBranch(117, 47, 0);
    __CrestLoad(121, (unsigned long )(& val), (long long )val);
    __CrestLoad(124, (unsigned long )(& pos), (long long )pos);
    __CrestLoad(123, (unsigned long )(& median), (long long )median);
    __CrestApply2(122, 1, (long long )(pos - median));
# 65 "btree.c"
    addValToNode(val, pos - median, *newNode, child);
    __CrestClearStack(125);
  }
  }
  __CrestLoad(126, (unsigned long )(& node->val[node->count]), (long long )node->val[node->count]);
  __CrestStore(127, (unsigned long )pval);
# 67 "btree.c"
  *pval = node->val[node->count];
# 68 "btree.c"
  mem_13 = *newNode;
# 68 "btree.c"
  mem_13->link[0] = node->link[node->count];
  __CrestLoad(130, (unsigned long )(& node->count), (long long )node->count);
  __CrestLoad(129, (unsigned long )0, (long long )1);
  __CrestApply2(128, 1, (long long )(node->count - 1));
  __CrestStore(131, (unsigned long )(& node->count));
# 69 "btree.c"
  (node->count) --;

  {
  __CrestReturn(132);
# 43 "btree.c"
  return;
  }
}
}
# 73 "btree.c"
int setValueInNode(int val , int *pval , struct btreeNode *node , struct btreeNode **child )
{
  int pos ;
  int tmp ;
  int __retres7 ;

  {
  __CrestCall(134, 5);
  __CrestStore(133, (unsigned long )(& val));
  {
  __CrestLoad(137, (unsigned long )(& node), (long long )((unsigned long )node));
  __CrestLoad(136, (unsigned long )0, (long long )0);
  __CrestApply2(135, 12, (long long )(node == 0));
# 77 "btree.c"
  if (node == 0) {
    __CrestBranch(138, 52, 1);
    __CrestLoad(140, (unsigned long )(& val), (long long )val);
    __CrestStore(141, (unsigned long )pval);
# 78 "btree.c"
    *pval = val;
# 79 "btree.c"
    *child = (struct btreeNode *)((void *)0);
    __CrestLoad(142, (unsigned long )0, (long long )1);
    __CrestStore(143, (unsigned long )(& __retres7));
# 80 "btree.c"
    __retres7 = 1;
# 80 "btree.c"
    goto return_label;
  } else {
    __CrestBranch(139, 55, 0);

  }
  }
  {
  __CrestLoad(146, (unsigned long )(& val), (long long )val);
  __CrestLoad(145, (unsigned long )(& node->val[1]), (long long )node->val[1]);
  __CrestApply2(144, 16, (long long )(val < node->val[1]));
# 83 "btree.c"
  if (val < node->val[1]) {
    __CrestBranch(147, 57, 1);
    __CrestLoad(149, (unsigned long )0, (long long )0);
    __CrestStore(150, (unsigned long )(& pos));
# 84 "btree.c"
    pos = 0;
  } else {
    __CrestBranch(148, 58, 0);
    __CrestLoad(151, (unsigned long )(& node->count), (long long )node->count);
    __CrestStore(152, (unsigned long )(& pos));
# 86 "btree.c"
    pos = node->count;
    {
# 86 "btree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(155, (unsigned long )(& val), (long long )val);
      __CrestLoad(154, (unsigned long )(& node->val[pos]), (long long )node->val[pos]);
      __CrestApply2(153, 16, (long long )(val < node->val[pos]));
# 86 "btree.c"
      if (val < node->val[pos]) {
        __CrestBranch(156, 63, 1);
        {
        __CrestLoad(160, (unsigned long )(& pos), (long long )pos);
        __CrestLoad(159, (unsigned long )0, (long long )1);
        __CrestApply2(158, 14, (long long )(pos > 1));
# 86 "btree.c"
        if (pos > 1) {
          __CrestBranch(161, 64, 1);

        } else {
          __CrestBranch(162, 65, 0);
# 86 "btree.c"
          goto while_break;
        }
        }
      } else {
        __CrestBranch(157, 66, 0);
# 86 "btree.c"
        goto while_break;
      }
      }
      __CrestLoad(165, (unsigned long )(& pos), (long long )pos);
      __CrestLoad(164, (unsigned long )0, (long long )1);
      __CrestApply2(163, 1, (long long )(pos - 1));
      __CrestStore(166, (unsigned long )(& pos));
# 86 "btree.c"
      pos --;
    }
    while_break: ;
    }
    {
    __CrestLoad(169, (unsigned long )(& val), (long long )val);
    __CrestLoad(168, (unsigned long )(& node->val[pos]), (long long )node->val[pos]);
    __CrestApply2(167, 12, (long long )(val == node->val[pos]));
# 88 "btree.c"
    if (val == node->val[pos]) {
      __CrestBranch(170, 70, 1);
# 89 "btree.c"
      printf((char const * __restrict )"Duplicates not allowed\n");
      __CrestClearStack(172);
      __CrestLoad(173, (unsigned long )0, (long long )0);
      __CrestStore(174, (unsigned long )(& __retres7));
# 90 "btree.c"
      __retres7 = 0;
# 90 "btree.c"
      goto return_label;
    } else {
      __CrestBranch(171, 73, 0);

    }
    }
  }
  }
  __CrestLoad(175, (unsigned long )(& val), (long long )val);
# 93 "btree.c"
  tmp = setValueInNode(val, pval, node->link[pos], child);
  __CrestHandleReturn(177, (long long )tmp);
  __CrestStore(176, (unsigned long )(& tmp));
  {
  __CrestLoad(180, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(179, (unsigned long )0, (long long )0);
  __CrestApply2(178, 13, (long long )(tmp != 0));
# 93 "btree.c"
  if (tmp != 0) {
    __CrestBranch(181, 76, 1);
    {
    __CrestLoad(185, (unsigned long )(& node->count), (long long )node->count);
    __CrestLoad(184, (unsigned long )0, (long long )4);
    __CrestApply2(183, 16, (long long )(node->count < 4));
# 94 "btree.c"
    if (node->count < 4) {
      __CrestBranch(186, 77, 1);
      __CrestLoad(188, (unsigned long )pval, (long long )*pval);
      __CrestLoad(189, (unsigned long )(& pos), (long long )pos);
# 95 "btree.c"
      addValToNode(*pval, pos, node, *child);
      __CrestClearStack(190);
    } else {
      __CrestBranch(187, 78, 0);
      __CrestLoad(191, (unsigned long )pval, (long long )*pval);
      __CrestLoad(192, (unsigned long )(& pos), (long long )pos);
# 97 "btree.c"
      splitNode(*pval, pval, pos, node, *child, child);
      __CrestClearStack(193);
      __CrestLoad(194, (unsigned long )0, (long long )1);
      __CrestStore(195, (unsigned long )(& __retres7));
# 98 "btree.c"
      __retres7 = 1;
# 98 "btree.c"
      goto return_label;
    }
    }
  } else {
    __CrestBranch(182, 81, 0);

  }
  }
  __CrestLoad(196, (unsigned long )0, (long long )0);
  __CrestStore(197, (unsigned long )(& __retres7));
# 101 "btree.c"
  __retres7 = 0;
  return_label:
  {
  __CrestLoad(198, (unsigned long )(& __retres7), (long long )__retres7);
  __CrestReturn(199);
# 73 "btree.c"
  return (__retres7);
  }
}
}
# 105 "btree.c"
void insertion(int val )
{
  int flag ;
  int i ;
  struct btreeNode *child ;

  {
  __CrestCall(201, 6);
  __CrestStore(200, (unsigned long )(& val));
  __CrestLoad(202, (unsigned long )(& val), (long long )val);
# 109 "btree.c"
  flag = setValueInNode(val, & i, root, & child);
  __CrestHandleReturn(204, (long long )flag);
  __CrestStore(203, (unsigned long )(& flag));
  {
  __CrestLoad(207, (unsigned long )(& flag), (long long )flag);
  __CrestLoad(206, (unsigned long )0, (long long )0);
  __CrestApply2(205, 13, (long long )(flag != 0));
# 110 "btree.c"
  if (flag != 0) {
    __CrestBranch(208, 86, 1);
    __CrestLoad(210, (unsigned long )(& i), (long long )i);
# 111 "btree.c"
    root = createNode(i, child);
    __CrestClearStack(211);
  } else {
    __CrestBranch(209, 87, 0);

  }
  }

  {
  __CrestReturn(212);
# 105 "btree.c"
  return;
  }
}
}
# 115 "btree.c"
void copySuccessor(struct btreeNode *myNode , int pos )
{
  struct btreeNode *dummy ;

  {
  __CrestCall(214, 7);
  __CrestStore(213, (unsigned long )(& pos));
# 117 "btree.c"
  dummy = myNode->link[pos];
  {
# 119 "btree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(217, (unsigned long )(& dummy->link[0]), (long long )((unsigned long )dummy->link[0]));
    __CrestLoad(216, (unsigned long )0, (long long )((unsigned long )((void *)0)));
    __CrestApply2(215, 13, (long long )((unsigned long )dummy->link[0] != (unsigned long )((void *)0)));
# 119 "btree.c"
    if ((unsigned long )dummy->link[0] != (unsigned long )((void *)0)) {
      __CrestBranch(218, 95, 1);

    } else {
      __CrestBranch(219, 96, 0);
# 119 "btree.c"
      goto while_break;
    }
    }
# 120 "btree.c"
    dummy = dummy->link[0];
  }
  while_break: ;
  }
  __CrestLoad(220, (unsigned long )(& dummy->val[1]), (long long )dummy->val[1]);
  __CrestStore(221, (unsigned long )(& myNode->val[pos]));
# 121 "btree.c"
  myNode->val[pos] = dummy->val[1];

  {
  __CrestReturn(222);
# 115 "btree.c"
  return;
  }
}
}
# 126 "btree.c"
void removeVal(struct btreeNode *myNode , int pos )
{
  int i ;

  {
  __CrestCall(224, 8);
  __CrestStore(223, (unsigned long )(& pos));
  __CrestLoad(227, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(226, (unsigned long )0, (long long )1);
  __CrestApply2(225, 0, (long long )(pos + 1));
  __CrestStore(228, (unsigned long )(& i));
# 127 "btree.c"
  i = pos + 1;
  {
# 128 "btree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(231, (unsigned long )(& i), (long long )i);
    __CrestLoad(230, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestApply2(229, 15, (long long )(i <= myNode->count));
# 128 "btree.c"
    if (i <= myNode->count) {
      __CrestBranch(232, 107, 1);

    } else {
      __CrestBranch(233, 108, 0);
# 128 "btree.c"
      goto while_break;
    }
    }
    __CrestLoad(234, (unsigned long )(& myNode->val[i]), (long long )myNode->val[i]);
    __CrestStore(235, (unsigned long )(& myNode->val[i - 1]));
# 129 "btree.c"
    myNode->val[i - 1] = myNode->val[i];
# 130 "btree.c"
    myNode->link[i - 1] = myNode->link[i];
    __CrestLoad(238, (unsigned long )(& i), (long long )i);
    __CrestLoad(237, (unsigned long )0, (long long )1);
    __CrestApply2(236, 0, (long long )(i + 1));
    __CrestStore(239, (unsigned long )(& i));
# 131 "btree.c"
    i ++;
  }
  while_break: ;
  }
  __CrestLoad(242, (unsigned long )(& myNode->count), (long long )myNode->count);
  __CrestLoad(241, (unsigned long )0, (long long )1);
  __CrestApply2(240, 1, (long long )(myNode->count - 1));
  __CrestStore(243, (unsigned long )(& myNode->count));
# 133 "btree.c"
  (myNode->count) --;

  {
  __CrestReturn(244);
# 126 "btree.c"
  return;
  }
}
}
# 137 "btree.c"
void doRightShift(struct btreeNode *myNode , int pos )
{
  struct btreeNode *x ;
  int j ;

  {
  __CrestCall(246, 9);
  __CrestStore(245, (unsigned long )(& pos));
# 138 "btree.c"
  x = myNode->link[pos];
  __CrestLoad(247, (unsigned long )(& x->count), (long long )x->count);
  __CrestStore(248, (unsigned long )(& j));
# 139 "btree.c"
  j = x->count;
  {
# 141 "btree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(251, (unsigned long )(& j), (long long )j);
    __CrestLoad(250, (unsigned long )0, (long long )0);
    __CrestApply2(249, 14, (long long )(j > 0));
# 141 "btree.c"
    if (j > 0) {
      __CrestBranch(252, 119, 1);

    } else {
      __CrestBranch(253, 120, 0);
# 141 "btree.c"
      goto while_break;
    }
    }
    __CrestLoad(254, (unsigned long )(& x->val[j]), (long long )x->val[j]);
    __CrestStore(255, (unsigned long )(& x->val[j + 1]));
# 142 "btree.c"
    x->val[j + 1] = x->val[j];
# 143 "btree.c"
    x->link[j + 1] = x->link[j];
  }
  while_break: ;
  }
  __CrestLoad(256, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(257, (unsigned long )(& x->val[1]));
# 145 "btree.c"
  x->val[1] = myNode->val[pos];
# 146 "btree.c"
  x->link[1] = x->link[0];
  __CrestLoad(260, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(259, (unsigned long )0, (long long )1);
  __CrestApply2(258, 0, (long long )(x->count + 1));
  __CrestStore(261, (unsigned long )(& x->count));
# 147 "btree.c"
  (x->count) ++;
# 149 "btree.c"
  x = myNode->link[pos - 1];
  __CrestLoad(262, (unsigned long )(& x->val[x->count]), (long long )x->val[x->count]);
  __CrestStore(263, (unsigned long )(& myNode->val[pos]));
# 150 "btree.c"
  myNode->val[pos] = x->val[x->count];
# 151 "btree.c"
  myNode->link[pos] = x->link[x->count];
  __CrestLoad(266, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(265, (unsigned long )0, (long long )1);
  __CrestApply2(264, 1, (long long )(x->count - 1));
  __CrestStore(267, (unsigned long )(& x->count));
# 152 "btree.c"
  (x->count) --;

  {
  __CrestReturn(268);
# 137 "btree.c"
  return;
  }
}
}
# 157 "btree.c"
void doLeftShift(struct btreeNode *myNode , int pos )
{
  int j ;
  struct btreeNode *x ;
  struct btreeNode *mem_5 ;

  {
  __CrestCall(270, 10);
  __CrestStore(269, (unsigned long )(& pos));
  __CrestLoad(271, (unsigned long )0, (long long )1);
  __CrestStore(272, (unsigned long )(& j));
# 158 "btree.c"
  j = 1;
# 159 "btree.c"
  x = myNode->link[pos - 1];
  __CrestLoad(275, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(274, (unsigned long )0, (long long )1);
  __CrestApply2(273, 0, (long long )(x->count + 1));
  __CrestStore(276, (unsigned long )(& x->count));
# 161 "btree.c"
  (x->count) ++;
  __CrestLoad(277, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(278, (unsigned long )(& x->val[x->count]));
# 162 "btree.c"
  x->val[x->count] = myNode->val[pos];
# 163 "btree.c"
  mem_5 = myNode->link[pos];
# 163 "btree.c"
  x->link[x->count] = mem_5->link[0];
# 165 "btree.c"
  x = myNode->link[pos];
  __CrestLoad(279, (unsigned long )(& x->val[1]), (long long )x->val[1]);
  __CrestStore(280, (unsigned long )(& myNode->val[pos]));
# 166 "btree.c"
  myNode->val[pos] = x->val[1];
# 167 "btree.c"
  x->link[0] = x->link[1];
  __CrestLoad(283, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(282, (unsigned long )0, (long long )1);
  __CrestApply2(281, 1, (long long )(x->count - 1));
  __CrestStore(284, (unsigned long )(& x->count));
# 168 "btree.c"
  (x->count) --;
  {
# 170 "btree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(287, (unsigned long )(& j), (long long )j);
    __CrestLoad(286, (unsigned long )(& x->count), (long long )x->count);
    __CrestApply2(285, 15, (long long )(j <= x->count));
# 170 "btree.c"
    if (j <= x->count) {
      __CrestBranch(288, 131, 1);

    } else {
      __CrestBranch(289, 132, 0);
# 170 "btree.c"
      goto while_break;
    }
    }
    __CrestLoad(290, (unsigned long )(& x->val[j + 1]), (long long )x->val[j + 1]);
    __CrestStore(291, (unsigned long )(& x->val[j]));
# 171 "btree.c"
    x->val[j] = x->val[j + 1];
# 172 "btree.c"
    x->link[j] = x->link[j + 1];
    __CrestLoad(294, (unsigned long )(& j), (long long )j);
    __CrestLoad(293, (unsigned long )0, (long long )1);
    __CrestApply2(292, 0, (long long )(j + 1));
    __CrestStore(295, (unsigned long )(& j));
# 173 "btree.c"
    j ++;
  }
  while_break: ;
  }

  {
  __CrestReturn(296);
# 157 "btree.c"
  return;
  }
}
}
# 179 "btree.c"
void mergeNodes(struct btreeNode *myNode , int pos )
{
  int j ;
  struct btreeNode *x1 ;
  struct btreeNode *x2 ;

  {
  __CrestCall(298, 11);
  __CrestStore(297, (unsigned long )(& pos));
  __CrestLoad(299, (unsigned long )0, (long long )1);
  __CrestStore(300, (unsigned long )(& j));
# 180 "btree.c"
  j = 1;
# 181 "btree.c"
  x1 = myNode->link[pos];
# 181 "btree.c"
  x2 = myNode->link[pos - 1];
  __CrestLoad(303, (unsigned long )(& x2->count), (long long )x2->count);
  __CrestLoad(302, (unsigned long )0, (long long )1);
  __CrestApply2(301, 0, (long long )(x2->count + 1));
  __CrestStore(304, (unsigned long )(& x2->count));
# 183 "btree.c"
  (x2->count) ++;
  __CrestLoad(305, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(306, (unsigned long )(& x2->val[x2->count]));
# 184 "btree.c"
  x2->val[x2->count] = myNode->val[pos];
# 185 "btree.c"
  x2->link[x2->count] = myNode->link[0];
  {
# 187 "btree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(309, (unsigned long )(& j), (long long )j);
    __CrestLoad(308, (unsigned long )(& x1->count), (long long )x1->count);
    __CrestApply2(307, 15, (long long )(j <= x1->count));
# 187 "btree.c"
    if (j <= x1->count) {
      __CrestBranch(310, 142, 1);

    } else {
      __CrestBranch(311, 143, 0);
# 187 "btree.c"
      goto while_break;
    }
    }
    __CrestLoad(314, (unsigned long )(& x2->count), (long long )x2->count);
    __CrestLoad(313, (unsigned long )0, (long long )1);
    __CrestApply2(312, 0, (long long )(x2->count + 1));
    __CrestStore(315, (unsigned long )(& x2->count));
# 188 "btree.c"
    (x2->count) ++;
    __CrestLoad(316, (unsigned long )(& x1->val[j]), (long long )x1->val[j]);
    __CrestStore(317, (unsigned long )(& x2->val[x2->count]));
# 189 "btree.c"
    x2->val[x2->count] = x1->val[j];
# 190 "btree.c"
    x2->link[x2->count] = x1->link[j];
    __CrestLoad(320, (unsigned long )(& j), (long long )j);
    __CrestLoad(319, (unsigned long )0, (long long )1);
    __CrestApply2(318, 0, (long long )(j + 1));
    __CrestStore(321, (unsigned long )(& j));
# 191 "btree.c"
    j ++;
  }
  while_break: ;
  }
  __CrestLoad(322, (unsigned long )(& pos), (long long )pos);
  __CrestStore(323, (unsigned long )(& j));
# 194 "btree.c"
  j = pos;
  {
# 195 "btree.c"
  while (1) {
    while_continue___0: ;
    {
    __CrestLoad(326, (unsigned long )(& j), (long long )j);
    __CrestLoad(325, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestApply2(324, 16, (long long )(j < myNode->count));
# 195 "btree.c"
    if (j < myNode->count) {
      __CrestBranch(327, 151, 1);

    } else {
      __CrestBranch(328, 152, 0);
# 195 "btree.c"
      goto while_break___0;
    }
    }
    __CrestLoad(329, (unsigned long )(& myNode->val[j + 1]), (long long )myNode->val[j + 1]);
    __CrestStore(330, (unsigned long )(& myNode->val[j]));
# 196 "btree.c"
    myNode->val[j] = myNode->val[j + 1];
# 197 "btree.c"
    myNode->link[j] = myNode->link[j + 1];
    __CrestLoad(333, (unsigned long )(& j), (long long )j);
    __CrestLoad(332, (unsigned long )0, (long long )1);
    __CrestApply2(331, 0, (long long )(j + 1));
    __CrestStore(334, (unsigned long )(& j));
# 198 "btree.c"
    j ++;
  }
  while_break___0: ;
  }
  __CrestLoad(337, (unsigned long )(& myNode->count), (long long )myNode->count);
  __CrestLoad(336, (unsigned long )0, (long long )1);
  __CrestApply2(335, 1, (long long )(myNode->count - 1));
  __CrestStore(338, (unsigned long )(& myNode->count));
# 200 "btree.c"
  (myNode->count) --;
# 201 "btree.c"
  free((void *)x1);
  __CrestClearStack(339);

  {
  __CrestReturn(340);
# 179 "btree.c"
  return;
  }
}
}
# 205 "btree.c"
void adjustNode(struct btreeNode *myNode , int pos )
{
  struct btreeNode *mem_3 ;
  struct btreeNode *mem_4 ;
  struct btreeNode *mem_5 ;
  struct btreeNode *mem_6 ;

  {
  __CrestCall(342, 12);
  __CrestStore(341, (unsigned long )(& pos));
  {
  __CrestLoad(345, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(344, (unsigned long )0, (long long )0);
  __CrestApply2(343, 12, (long long )(pos == 0));
# 206 "btree.c"
  if (pos == 0) {
    __CrestBranch(346, 159, 1);
    {
# 207 "btree.c"
    mem_3 = myNode->link[1];
    {
    __CrestLoad(350, (unsigned long )(& mem_3->count), (long long )mem_3->count);
    __CrestLoad(349, (unsigned long )0, (long long )2);
    __CrestApply2(348, 14, (long long )(mem_3->count > 2));
# 207 "btree.c"
    if (mem_3->count > 2) {
      __CrestBranch(351, 162, 1);
      __CrestLoad(353, (unsigned long )0, (long long )1);
# 208 "btree.c"
      doLeftShift(myNode, 1);
      __CrestClearStack(354);
    } else {
      __CrestBranch(352, 163, 0);
      __CrestLoad(355, (unsigned long )0, (long long )1);
# 210 "btree.c"
      mergeNodes(myNode, 1);
      __CrestClearStack(356);
    }
    }
    }
  } else {
    __CrestBranch(347, 164, 0);
    {
    __CrestLoad(359, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestLoad(358, (unsigned long )(& pos), (long long )pos);
    __CrestApply2(357, 13, (long long )(myNode->count != pos));
# 213 "btree.c"
    if (myNode->count != pos) {
      __CrestBranch(360, 165, 1);
      {
# 214 "btree.c"
      mem_4 = myNode->link[pos - 1];
      {
      __CrestLoad(364, (unsigned long )(& mem_4->count), (long long )mem_4->count);
      __CrestLoad(363, (unsigned long )0, (long long )2);
      __CrestApply2(362, 14, (long long )(mem_4->count > 2));
# 214 "btree.c"
      if (mem_4->count > 2) {
        __CrestBranch(365, 168, 1);
        __CrestLoad(367, (unsigned long )(& pos), (long long )pos);
# 215 "btree.c"
        doRightShift(myNode, pos);
        __CrestClearStack(368);
      } else {
        __CrestBranch(366, 169, 0);
        {
# 217 "btree.c"
        mem_5 = myNode->link[pos + 1];
        {
        __CrestLoad(371, (unsigned long )(& mem_5->count), (long long )mem_5->count);
        __CrestLoad(370, (unsigned long )0, (long long )2);
        __CrestApply2(369, 14, (long long )(mem_5->count > 2));
# 217 "btree.c"
        if (mem_5->count > 2) {
          __CrestBranch(372, 172, 1);
          __CrestLoad(376, (unsigned long )(& pos), (long long )pos);
          __CrestLoad(375, (unsigned long )0, (long long )1);
          __CrestApply2(374, 0, (long long )(pos + 1));
# 218 "btree.c"
          doLeftShift(myNode, pos + 1);
          __CrestClearStack(377);
        } else {
          __CrestBranch(373, 173, 0);
          __CrestLoad(378, (unsigned long )(& pos), (long long )pos);
# 220 "btree.c"
          mergeNodes(myNode, pos);
          __CrestClearStack(379);
        }
        }
        }
      }
      }
      }
    } else {
      __CrestBranch(361, 174, 0);
      {
# 224 "btree.c"
      mem_6 = myNode->link[pos - 1];
      {
      __CrestLoad(382, (unsigned long )(& mem_6->count), (long long )mem_6->count);
      __CrestLoad(381, (unsigned long )0, (long long )2);
      __CrestApply2(380, 14, (long long )(mem_6->count > 2));
# 224 "btree.c"
      if (mem_6->count > 2) {
        __CrestBranch(383, 177, 1);
        __CrestLoad(385, (unsigned long )(& pos), (long long )pos);
# 225 "btree.c"
        doRightShift(myNode, pos);
        __CrestClearStack(386);
      } else {
        __CrestBranch(384, 178, 0);
        __CrestLoad(387, (unsigned long )(& pos), (long long )pos);
# 227 "btree.c"
        mergeNodes(myNode, pos);
        __CrestClearStack(388);
      }
      }
      }
    }
    }
  }
  }

  {
  __CrestReturn(389);
# 205 "btree.c"
  return;
  }
}
}
# 233 "btree.c"
int delValFromNode(int val , struct btreeNode *myNode )
{
  int pos ;
  int flag ;
  struct btreeNode *mem_5 ;

  {
  __CrestCall(391, 13);
  __CrestStore(390, (unsigned long )(& val));
  __CrestLoad(392, (unsigned long )0, (long long )0);
  __CrestStore(393, (unsigned long )(& flag));
# 234 "btree.c"
  flag = 0;
  {
  __CrestLoad(396, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(395, (unsigned long )0, (long long )0);
  __CrestApply2(394, 13, (long long )(myNode != 0));
# 235 "btree.c"
  if (myNode != 0) {
    __CrestBranch(397, 183, 1);
    {
    __CrestLoad(401, (unsigned long )(& val), (long long )val);
    __CrestLoad(400, (unsigned long )(& myNode->val[1]), (long long )myNode->val[1]);
    __CrestApply2(399, 16, (long long )(val < myNode->val[1]));
# 236 "btree.c"
    if (val < myNode->val[1]) {
      __CrestBranch(402, 184, 1);
      __CrestLoad(404, (unsigned long )0, (long long )0);
      __CrestStore(405, (unsigned long )(& pos));
# 237 "btree.c"
      pos = 0;
      __CrestLoad(406, (unsigned long )0, (long long )0);
      __CrestStore(407, (unsigned long )(& flag));
# 238 "btree.c"
      flag = 0;
    } else {
      __CrestBranch(403, 185, 0);
      __CrestLoad(408, (unsigned long )(& myNode->count), (long long )myNode->count);
      __CrestStore(409, (unsigned long )(& pos));
# 240 "btree.c"
      pos = myNode->count;
      {
# 240 "btree.c"
      while (1) {
        while_continue: ;
        {
        __CrestLoad(412, (unsigned long )(& val), (long long )val);
        __CrestLoad(411, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
        __CrestApply2(410, 16, (long long )(val < myNode->val[pos]));
# 240 "btree.c"
        if (val < myNode->val[pos]) {
          __CrestBranch(413, 190, 1);
          {
          __CrestLoad(417, (unsigned long )(& pos), (long long )pos);
          __CrestLoad(416, (unsigned long )0, (long long )1);
          __CrestApply2(415, 14, (long long )(pos > 1));
# 240 "btree.c"
          if (pos > 1) {
            __CrestBranch(418, 191, 1);

          } else {
            __CrestBranch(419, 192, 0);
# 240 "btree.c"
            goto while_break;
          }
          }
        } else {
          __CrestBranch(414, 193, 0);
# 240 "btree.c"
          goto while_break;
        }
        }
        __CrestLoad(422, (unsigned long )(& pos), (long long )pos);
        __CrestLoad(421, (unsigned long )0, (long long )1);
        __CrestApply2(420, 1, (long long )(pos - 1));
        __CrestStore(423, (unsigned long )(& pos));
# 240 "btree.c"
        pos --;
      }
      while_break: ;
      }
      {
      __CrestLoad(426, (unsigned long )(& val), (long long )val);
      __CrestLoad(425, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
      __CrestApply2(424, 12, (long long )(val == myNode->val[pos]));
# 242 "btree.c"
      if (val == myNode->val[pos]) {
        __CrestBranch(427, 197, 1);
        __CrestLoad(429, (unsigned long )0, (long long )1);
        __CrestStore(430, (unsigned long )(& flag));
# 243 "btree.c"
        flag = 1;
      } else {
        __CrestBranch(428, 198, 0);
        __CrestLoad(431, (unsigned long )0, (long long )0);
        __CrestStore(432, (unsigned long )(& flag));
# 245 "btree.c"
        flag = 0;
      }
      }
    }
    }
    {
    __CrestLoad(435, (unsigned long )(& flag), (long long )flag);
    __CrestLoad(434, (unsigned long )0, (long long )0);
    __CrestApply2(433, 13, (long long )(flag != 0));
# 248 "btree.c"
    if (flag != 0) {
      __CrestBranch(436, 200, 1);
      {
      __CrestLoad(440, (unsigned long )(& myNode->link[pos - 1]), (long long )((unsigned long )myNode->link[pos - 1]));
      __CrestLoad(439, (unsigned long )0, (long long )0);
      __CrestApply2(438, 13, (long long )(myNode->link[pos - 1] != 0));
# 249 "btree.c"
      if (myNode->link[pos - 1] != 0) {
        __CrestBranch(441, 201, 1);
        __CrestLoad(443, (unsigned long )(& pos), (long long )pos);
# 250 "btree.c"
        copySuccessor(myNode, pos);
        __CrestClearStack(444);
        __CrestLoad(445, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
# 251 "btree.c"
        flag = delValFromNode(myNode->val[pos], myNode->link[pos]);
        __CrestHandleReturn(447, (long long )flag);
        __CrestStore(446, (unsigned long )(& flag));
        {
        __CrestLoad(450, (unsigned long )(& flag), (long long )flag);
        __CrestLoad(449, (unsigned long )0, (long long )0);
        __CrestApply2(448, 12, (long long )(flag == 0));
# 252 "btree.c"
        if (flag == 0) {
          __CrestBranch(451, 203, 1);
# 253 "btree.c"
          printf((char const * __restrict )"Given data is not present in B-Tree\n");
          __CrestClearStack(453);
        } else {
          __CrestBranch(452, 204, 0);

        }
        }
      } else {
        __CrestBranch(442, 205, 0);
        __CrestLoad(454, (unsigned long )(& pos), (long long )pos);
# 256 "btree.c"
        removeVal(myNode, pos);
        __CrestClearStack(455);
      }
      }
    } else {
      __CrestBranch(437, 206, 0);
      __CrestLoad(456, (unsigned long )(& val), (long long )val);
# 259 "btree.c"
      flag = delValFromNode(val, myNode->link[pos]);
      __CrestHandleReturn(458, (long long )flag);
      __CrestStore(457, (unsigned long )(& flag));
    }
    }
    {
    __CrestLoad(461, (unsigned long )(& myNode->link[pos]), (long long )((unsigned long )myNode->link[pos]));
    __CrestLoad(460, (unsigned long )0, (long long )0);
    __CrestApply2(459, 13, (long long )(myNode->link[pos] != 0));
# 261 "btree.c"
    if (myNode->link[pos] != 0) {
      __CrestBranch(462, 208, 1);
      {
# 262 "btree.c"
      mem_5 = myNode->link[pos];
      {
      __CrestLoad(466, (unsigned long )(& mem_5->count), (long long )mem_5->count);
      __CrestLoad(465, (unsigned long )0, (long long )2);
      __CrestApply2(464, 16, (long long )(mem_5->count < 2));
# 262 "btree.c"
      if (mem_5->count < 2) {
        __CrestBranch(467, 211, 1);
        __CrestLoad(469, (unsigned long )(& pos), (long long )pos);
# 263 "btree.c"
        adjustNode(myNode, pos);
        __CrestClearStack(470);
      } else {
        __CrestBranch(468, 212, 0);

      }
      }
      }
    } else {
      __CrestBranch(463, 213, 0);

    }
    }
  } else {
    __CrestBranch(398, 214, 0);

  }
  }
  {
  __CrestLoad(471, (unsigned long )(& flag), (long long )flag);
  __CrestReturn(472);
# 266 "btree.c"
  return (flag);
  }
}
}
# 270 "btree.c"
void deletion(int val , struct btreeNode *myNode )
{
  struct btreeNode *tmp ;
  int tmp___0 ;

  {
  __CrestCall(474, 14);
  __CrestStore(473, (unsigned long )(& val));
  __CrestLoad(475, (unsigned long )(& val), (long long )val);
# 272 "btree.c"
  tmp___0 = delValFromNode(val, myNode);
  __CrestHandleReturn(477, (long long )tmp___0);
  __CrestStore(476, (unsigned long )(& tmp___0));
  {
  __CrestLoad(480, (unsigned long )(& tmp___0), (long long )tmp___0);
  __CrestLoad(479, (unsigned long )0, (long long )0);
  __CrestApply2(478, 13, (long long )(tmp___0 != 0));
# 272 "btree.c"
  if (tmp___0 != 0) {
    __CrestBranch(481, 218, 1);
    {
    __CrestLoad(485, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestLoad(484, (unsigned long )0, (long long )0);
    __CrestApply2(483, 12, (long long )(myNode->count == 0));
# 276 "btree.c"
    if (myNode->count == 0) {
      __CrestBranch(486, 219, 1);
# 277 "btree.c"
      tmp = myNode;
# 278 "btree.c"
      myNode = myNode->link[0];
# 279 "btree.c"
      free((void *)tmp);
      __CrestClearStack(488);
    } else {
      __CrestBranch(487, 220, 0);

    }
    }
  } else {
    __CrestBranch(482, 221, 0);
# 273 "btree.c"
    printf((char const * __restrict )"Given value is not present in B-Tree\n");
    __CrestClearStack(489);
# 274 "btree.c"
    goto return_label;
  }
  }
# 282 "btree.c"
  root = myNode;

  return_label:
  {
  __CrestReturn(490);
# 270 "btree.c"
  return;
  }
}
}
# 287 "btree.c"
void searching(int val , int *pos , struct btreeNode *myNode )
{


  {
  __CrestCall(492, 15);
  __CrestStore(491, (unsigned long )(& val));
  {
  __CrestLoad(495, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(494, (unsigned long )0, (long long )0);
  __CrestApply2(493, 12, (long long )(myNode == 0));
# 288 "btree.c"
  if (myNode == 0) {
    __CrestBranch(496, 228, 1);
# 289 "btree.c"
    goto return_label;
  } else {
    __CrestBranch(497, 230, 0);

  }
  }
  {
  __CrestLoad(500, (unsigned long )(& val), (long long )val);
  __CrestLoad(499, (unsigned long )(& myNode->val[1]), (long long )myNode->val[1]);
  __CrestApply2(498, 16, (long long )(val < myNode->val[1]));
# 292 "btree.c"
  if (val < myNode->val[1]) {
    __CrestBranch(501, 232, 1);
    __CrestLoad(503, (unsigned long )0, (long long )0);
    __CrestStore(504, (unsigned long )pos);
# 293 "btree.c"
    *pos = 0;
  } else {
    __CrestBranch(502, 233, 0);
    __CrestLoad(505, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestStore(506, (unsigned long )pos);
# 295 "btree.c"
    *pos = myNode->count;
    {
# 295 "btree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(509, (unsigned long )(& val), (long long )val);
      __CrestLoad(508, (unsigned long )(& myNode->val[*pos]), (long long )myNode->val[*pos]);
      __CrestApply2(507, 16, (long long )(val < myNode->val[*pos]));
# 295 "btree.c"
      if (val < myNode->val[*pos]) {
        __CrestBranch(510, 238, 1);
        {
        __CrestLoad(514, (unsigned long )pos, (long long )*pos);
        __CrestLoad(513, (unsigned long )0, (long long )1);
        __CrestApply2(512, 14, (long long )(*pos > 1));
# 295 "btree.c"
        if (*pos > 1) {
          __CrestBranch(515, 239, 1);

        } else {
          __CrestBranch(516, 240, 0);
# 295 "btree.c"
          goto while_break;
        }
        }
      } else {
        __CrestBranch(511, 241, 0);
# 295 "btree.c"
        goto while_break;
      }
      }
      __CrestLoad(519, (unsigned long )pos, (long long )*pos);
      __CrestLoad(518, (unsigned long )0, (long long )1);
      __CrestApply2(517, 1, (long long )(*pos - 1));
      __CrestStore(520, (unsigned long )pos);
# 295 "btree.c"
      (*pos) --;
    }
    while_break: ;
    }
    {
    __CrestLoad(523, (unsigned long )(& val), (long long )val);
    __CrestLoad(522, (unsigned long )(& myNode->val[*pos]), (long long )myNode->val[*pos]);
    __CrestApply2(521, 12, (long long )(val == myNode->val[*pos]));
# 297 "btree.c"
    if (val == myNode->val[*pos]) {
      __CrestBranch(524, 245, 1);
      __CrestLoad(526, (unsigned long )(& val), (long long )val);
# 298 "btree.c"
      printf((char const * __restrict )"Given data %d is present in B-Tree", val);
      __CrestClearStack(527);
# 299 "btree.c"
      goto return_label;
    } else {
      __CrestBranch(525, 248, 0);

    }
    }
  }
  }
  __CrestLoad(528, (unsigned long )(& val), (long long )val);
# 302 "btree.c"
  searching(val, pos, myNode->link[*pos]);
  __CrestClearStack(529);

  return_label:
  {
  __CrestReturn(530);
# 287 "btree.c"
  return;
  }
}
}
# 307 "btree.c"
void traversal(struct btreeNode *myNode )
{
  int i ;

  {
  __CrestCall(531, 16);

  {
  __CrestLoad(534, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(533, (unsigned long )0, (long long )0);
  __CrestApply2(532, 13, (long long )(myNode != 0));
# 309 "btree.c"
  if (myNode != 0) {
    __CrestBranch(535, 253, 1);
    __CrestLoad(537, (unsigned long )0, (long long )0);
    __CrestStore(538, (unsigned long )(& i));
# 310 "btree.c"
    i = 0;
    {
# 310 "btree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(541, (unsigned long )(& i), (long long )i);
      __CrestLoad(540, (unsigned long )(& myNode->count), (long long )myNode->count);
      __CrestApply2(539, 16, (long long )(i < myNode->count));
# 310 "btree.c"
      if (i < myNode->count) {
        __CrestBranch(542, 258, 1);

      } else {
        __CrestBranch(543, 259, 0);
# 310 "btree.c"
        goto while_break;
      }
      }
# 311 "btree.c"
      traversal(myNode->link[i]);
      __CrestClearStack(544);
      __CrestLoad(545, (unsigned long )(& myNode->val[i + 1]), (long long )myNode->val[i + 1]);
# 312 "btree.c"
      printf((char const * __restrict )"%d ", myNode->val[i + 1]);
      __CrestClearStack(546);
      __CrestLoad(549, (unsigned long )(& i), (long long )i);
      __CrestLoad(548, (unsigned long )0, (long long )1);
      __CrestApply2(547, 0, (long long )(i + 1));
      __CrestStore(550, (unsigned long )(& i));
# 310 "btree.c"
      i ++;
    }
    while_break: ;
    }
# 314 "btree.c"
    traversal(myNode->link[i]);
    __CrestClearStack(551);
  } else {
    __CrestBranch(536, 263, 0);

  }
  }

  {
  __CrestReturn(552);
# 307 "btree.c"
  return;
  }
}
}
# 318 "btree.c"
int main(void)
{
  int val ;
  int ch ;
  int cnt ;
  int tmp ;
  int __retres5 ;

  {
  __globinit_btree();
  __CrestCall(553, 17);
  __CrestLoad(554, (unsigned long )0, (long long )5);
  __CrestStore(555, (unsigned long )(& cnt));
# 320 "btree.c"
  cnt = 5;
# 321 "btree.c"
  while (1) {
    while_continue: ;
    __CrestLoad(556, (unsigned long )(& cnt), (long long )cnt);
    __CrestStore(557, (unsigned long )(& tmp));
# 321 "btree.c"
    tmp = cnt;
    __CrestLoad(560, (unsigned long )(& cnt), (long long )cnt);
    __CrestLoad(559, (unsigned long )0, (long long )1);
    __CrestApply2(558, 1, (long long )(cnt - 1));
    __CrestStore(561, (unsigned long )(& cnt));
# 321 "btree.c"
    cnt --;
    {
    __CrestLoad(564, (unsigned long )(& tmp), (long long )tmp);
    __CrestLoad(563, (unsigned long )0, (long long )0);
    __CrestApply2(562, 13, (long long )(tmp != 0));
# 321 "btree.c"
    if (tmp != 0) {
      __CrestBranch(565, 272, 1);

    } else {
      __CrestBranch(566, 273, 0);
# 321 "btree.c"
      goto while_break;
    }
    }
# 322 "btree.c"
    printf((char const * __restrict )"1. Insertion\t2. Deletion\n");
    __CrestClearStack(567);
# 323 "btree.c"
    printf((char const * __restrict )"3. Searching\t4. Traversal\n");
    __CrestClearStack(568);
# 324 "btree.c"
    printf((char const * __restrict )"5. Exit\nEnter your choice:");
    __CrestClearStack(569);
# 326 "btree.c"
    __CrestInt(& ch);
    __CrestLoad(570, (unsigned long )(& ch), (long long )ch);
# 326 "btree.c"
    fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", ch);
    __CrestClearStack(571);
    {
    {
    __CrestLoad(574, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(573, (unsigned long )0, (long long )1);
    __CrestApply2(572, 12, (long long )(ch == 1));
# 328 "btree.c"
    if (ch == 1) {
      __CrestBranch(575, 277, 1);
# 328 "btree.c"
      goto case_1;
    } else {
      __CrestBranch(576, 278, 0);

    }
    }
    {
    __CrestLoad(579, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(578, (unsigned long )0, (long long )2);
    __CrestApply2(577, 12, (long long )(ch == 2));
# 334 "btree.c"
    if (ch == 2) {
      __CrestBranch(580, 280, 1);
# 334 "btree.c"
      goto case_2;
    } else {
      __CrestBranch(581, 281, 0);

    }
    }
    {
    __CrestLoad(584, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(583, (unsigned long )0, (long long )3);
    __CrestApply2(582, 12, (long long )(ch == 3));
# 340 "btree.c"
    if (ch == 3) {
      __CrestBranch(585, 283, 1);
# 340 "btree.c"
      goto case_3;
    } else {
      __CrestBranch(586, 284, 0);

    }
    }
    {
    __CrestLoad(589, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(588, (unsigned long )0, (long long )4);
    __CrestApply2(587, 12, (long long )(ch == 4));
# 346 "btree.c"
    if (ch == 4) {
      __CrestBranch(590, 286, 1);
# 346 "btree.c"
      goto case_4;
    } else {
      __CrestBranch(591, 287, 0);

    }
    }
    {
    __CrestLoad(594, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(593, (unsigned long )0, (long long )5);
    __CrestApply2(592, 12, (long long )(ch == 5));
# 349 "btree.c"
    if (ch == 5) {
      __CrestBranch(595, 289, 1);
# 349 "btree.c"
      goto case_5;
    } else {
      __CrestBranch(596, 290, 0);

    }
    }
# 351 "btree.c"
    goto switch_default;
    case_1:
# 329 "btree.c"
    printf((char const * __restrict )"Enter your input:");
    __CrestClearStack(597);
# 331 "btree.c"
    __CrestInt(& val);
    __CrestLoad(598, (unsigned long )(& val), (long long )val);
# 331 "btree.c"
    fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", val);
    __CrestClearStack(599);
    __CrestLoad(600, (unsigned long )(& val), (long long )val);
# 332 "btree.c"
    insertion(val);
    __CrestClearStack(601);
# 333 "btree.c"
    goto switch_break;
    case_2:
# 335 "btree.c"
    printf((char const * __restrict )"Enter the element to delete:");
    __CrestClearStack(602);
# 337 "btree.c"
    __CrestInt(& val);
    __CrestLoad(603, (unsigned long )(& val), (long long )val);
# 337 "btree.c"
    fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", val);
    __CrestClearStack(604);
    __CrestLoad(605, (unsigned long )(& val), (long long )val);
# 338 "btree.c"
    deletion(val, root);
    __CrestClearStack(606);
# 339 "btree.c"
    goto switch_break;
    case_3:
# 341 "btree.c"
    printf((char const * __restrict )"Enter the element to search:");
    __CrestClearStack(607);
# 343 "btree.c"
    __CrestInt(& val);
    __CrestLoad(608, (unsigned long )(& val), (long long )val);
# 343 "btree.c"
    fprintf((FILE * __restrict )__stderrp, (char const * __restrict )"%d\n", val);
    __CrestClearStack(609);
    __CrestLoad(610, (unsigned long )(& val), (long long )val);
# 344 "btree.c"
    searching(val, & ch, root);
    __CrestClearStack(611);
# 345 "btree.c"
    goto switch_break;
    case_4:
# 347 "btree.c"
    traversal(root);
    __CrestClearStack(612);
# 348 "btree.c"
    goto switch_break;
    case_5:
    __CrestLoad(613, (unsigned long )0, (long long )0);
# 350 "btree.c"
    exit(0);
    __CrestClearStack(614);
    switch_default:
# 352 "btree.c"
    printf((char const * __restrict )"U have entered wrong option!!\n");
    __CrestClearStack(615);
# 353 "btree.c"
    goto switch_break;
    switch_break: ;
    }
# 355 "btree.c"
    printf((char const * __restrict )"\n");
    __CrestClearStack(616);
  }
  while_break:
  __CrestLoad(617, (unsigned long )0, (long long )0);
  __CrestStore(618, (unsigned long )(& __retres5));
# 357 "btree.c"
  __retres5 = 0;
  __CrestLoad(619, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(620);
# 318 "btree.c"
  return (__retres5);
}
}
void __globinit_btree(void)
{


  {
  __CrestInit();
}
}
