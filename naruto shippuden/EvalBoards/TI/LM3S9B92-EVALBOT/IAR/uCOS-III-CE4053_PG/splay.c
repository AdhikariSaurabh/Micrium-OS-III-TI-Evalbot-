/*
                An implementation of top-down splaying
                    D. Sleator <sleator@cs.cmu.edu>
    	                     March 1992

  "Splay trees", or "self-adjusting search trees" are a simple and
  efficient data structure for storing an ordered set.  The data
  structure consists of a binary tree, without parent pointers, and no
  additional fields.  It allows searching, insertion, deletion,
  deletemin, deletemax, splitting, joining, and many other operations,
  all with amortized logarithmic performance.  Since the trees adapt to
  the sequence of requests, their performance on real access patterns is
  typically even better.  Splay trees are described in a number of texts
  and papers [1,2,3,4,5].

  The code here is adapted from simple top-down splay, at the bottom of
  page 669 of [3].  It can be obtained via anonymous ftp from
  spade.pc.cs.cmu.edu in directory /usr/sleator/public.

  The chief modification here is that the splay operation works even if the
  item being splayed is not in the tree, and even if the tree root of the
  tree is NULL.  So the line:

                              t = splay(i, t);

  causes it to search for item with key i in the tree rooted at t.  If it's
  there, it is splayed to the root.  If it isn't there, then the node put
  at the root is the last one before NULL that would have been reached in a
  normal binary search for i.  (It's a neighbor of i in the tree.)  This
  allows many other operations to be easily implemented, as shown below.

  [1] "Fundamentals of data structures in C", Horowitz, Sahni,
       and Anderson-Freed, Computer Science Press, pp 542-547.
  [2] "Data Structures and Their Algorithms", Lewis and Denenberg,
       Harper Collins, 1991, pp 243-251.
  [3] "Self-adjusting Binary Search Trees" Sleator and Tarjan,
       JACM Volume 32, No 3, July 1985, pp 652-686.
  [4] "Data Structure and Algorithm Analysis", Mark Weiss,
       Benjamin Cummins, 1992, pp 119-130.
  [5] "Data Structures, Algorithms, and Performance", Derick Wood,
       Addison-Wesley, 1993, pp 367-375.
*/


#include <stdio.h>
#include <stdlib.h>
#include <os.h>
#include "splay.h"

//#include "tree.h"

Tree *SH = NULL;
OS_MEM  MyPartition;
OS_ERR m_err;
Tree MyPartitionStorage[MQTY];
int size;  /* number of nodes in the tree */
           /* Not actually needed for any of the operations */

TASK_TCB *min_tcb=NULL;
TASK_TCB *cur_tcb=NULL;
int period_of_task_in_rdylist= 1;
Tree * splay (TASK_TCB *i, Tree * t) {
/* Simple top down splay, not requiring i to be in the tree t.  */
/* What it does is described above.                             */
    Tree N, *l, *r, *y;
    if (t == NULL) return t;
    N.left = N.right = NULL;
    l = r = &N;

    for (;;) {
	if (i->data < t->t_tcb->data) {
	    if (t->left == NULL) break;
	    if (i->data < t->left->t_tcb->data) {
		y = t->left;                           /* rotate right */
		t->left = y->right;
		y->right = t;
		t = y;
		if (t->left == NULL) break;
	    }
	    r->left = t;                               /* link right */
	    r = t;
	    t = t->left;
	} else if (i->data > t->t_tcb->data) {
	    if (t->right == NULL) break;
	    if (i->data > t->right->t_tcb->data) {
		y = t->right;                          /* rotate left */
		t->right = y->left;
		y->left = t;
		t = y;
		if (t->right == NULL) break;
	    }
	    l->right = t;                              /* link left */
	    l = t;
	    t = t->right;
	} else {
	    break;
	}
    }
    l->right = t->left;                                /* assemble */
    r->left = t->right;
    t->left = N.right;
    t->right = N.left;
    return t;
}

/* Here is how sedgewick would have written this.                    */
/* It does the same thing.                                           */
/*Tree * sedgewickized_splay (TASK_TCB *i, Tree * t) {
    Tree N, *l, *r, *y;
    if (t == NULL) return t;
    N.left = N.right = NULL;
    l = r = &N;

    for (;;) {
	if (i->data < t->t_tcb->data) {
	    if (t->left != NULL && i->data < t->left->t_tcb->data) {
		y = t->left; t->left = y->right; y->right = t; t = y;
	    }
	    if (t->left == NULL) break;
	    r->left = t; r = t; t = t->left;
	} else if (i->data > t->t_tcb->data) {
	    if (t->right != NULL && i->data > t->right->t_tcb->data) {
		y = t->right; t->right = y->left; y->left = t; t = y;
	    }
	    if (t->right == NULL) break;
	    l->right = t; l = t; t = t->right;
	} else break;
    }
    l->right=t->left; r->left=t->right; t->left=N.right; t->right=N.left;
    return t;
}*/

Tree * insert(TASK_TCB *i, Tree * t) {
/* Insert i into the tree t, unless it's already there.    */
/* Return a pointer to the resulting tree.                 */
    Tree * n;
    
    n = (Tree *) OSMemGet((OS_MEM *)&MyPartition,(OS_ERR *)&m_err); 
    if (n == NULL) {
	printf("Ran out of space\n");
	exit(1);
    }
    n->t_tcb = i;
    if (t == NULL) {
	n->left = n->right = NULL;
	size = 1;
	return n;
    }
    t = splay(i,t);
    //printf("%d",t->t_tcb->data);
    if (i->data < t->t_tcb->data) {
	n->left = t->left;
	n->right = t;
	t->left = NULL;
	size ++;
	return n;
    } else if (i->data > t->t_tcb->data) {
	n->right = t->right;
	n->left = t;
	t->right = NULL;
	size++;
	return n;
    } 
    // if the period is same insert the next coming node into the next place at the same level 
    else { 
       Tree *temp=t;
         while(t->next != NULL){
            t=t->next;
      }
      
      
      t->next= n;
      //new addition
      t->t_tcb->p_tcb->NextPtr=n->t_tcb->p_tcb;
      //
      return temp;
    }
    
//	OSMemPut((OS_MEM  *)&MyPartition,                              
 //                (void    *)new,                                  
  //               (OS_ERR  *)&m_err);
	
}


Tree * delete_n(TASK_TCB *i, Tree * t) {
// Deletes i->data from the tree if it's there.               
// Return a pointer to the resulting tree.              
    Tree * x;
    Tree *temp;
    if (t==NULL) return NULL;
    t = splay(i,t);
    temp=t;    
    if (i->data == t->t_tcb->data) {               
       if(t->next==NULL)
       {   
        if (t->left == NULL) {
	               
              x = t->right;
	} else {
                 
	    x = splay(i, t->left);
	    x->right = t->right;
	}
        t->next=NULL;
        t->right=NULL;
        t->left=NULL;
        t->t_tcb=NULL;
        
        
        OSMemPut((OS_MEM  *)&MyPartition,                              
                 (void    *)t,                                  
                 (OS_ERR  *)&m_err);
        return x;
       }
       else
       {
         temp=t;
         t->next->left=t->left;
         t->next->right=t->right;
         t=t->next;
         
         
        temp->next=NULL;
        temp->right=NULL;
        temp->left=NULL;
        temp->t_tcb=NULL;
         OSMemPut((OS_MEM  *)&MyPartition,                              
                 (void    *)temp,                                  
                 (OS_ERR  *)&m_err);
         return t;
       }
	size--;
      //t->left=NULL;
      //t->right=NULL;
	
	
    }
    return t;                         
}


void set_min_ptr(Tree *rt)
{
 Tree *temp1;
 temp1=rt; 
 while(temp1->left!=NULL)
 {
    temp1=temp1->left;
 }
 min_tcb=temp1->t_tcb;
}