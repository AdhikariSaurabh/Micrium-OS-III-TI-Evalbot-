//splay structure
#include <os.h>
//#include "tree.h"
//#include "st_type.h"
#define MQTY  6                  // max of the task of the size struct tree 
extern OS_MEM  MyPartition;      
extern OS_ERR m_err;

typedef struct task_tcb{
  //int flag_in_rdylist;
  int period;
  int data; 
  OS_TCB *p_tcb;
 
}TASK_TCB;

//extern TASK_TCB *min_tcb;   //pointer to t_tcb pointing to min value , has to updated whenever a node an insert or delete operation is performed on tree
extern TASK_TCB *cur_tcb;
//typedef struct task TASK_TCB;
//tree->t_tcb->p_tcb  ...use for loading
//tree->t_tcb->data
typedef struct tree_node {
    struct tree_node * left, * right,*next;
    TASK_TCB *t_tcb;    
}Tree;
extern Tree *min_tcb;  //min ptr

extern int period_of_task_in_rdylist;
extern Tree *SH;
extern Tree MyPartitionStorage[MQTY];
Tree * splay (TASK_TCB *, Tree * );
Tree * insert(TASK_TCB *, Tree * );
Tree * delete_n(TASK_TCB *, Tree * );
//void delete_n(TASK_TCB *);
void set_min_ptr(Tree *);
  
    
    
