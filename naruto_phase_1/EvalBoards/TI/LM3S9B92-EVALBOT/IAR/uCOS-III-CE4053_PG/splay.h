//splay structure
#include <os.h>
//#include "tree.h"
//#include "st_type.h"

#define MQTY 10
extern OS_MEM  MyPartition;      
extern OS_ERR m_err;

typedef struct task_tcb{
  int flag_in_rdylist;
  int data; ///this is period of task
  OS_TCB *p_tcb;
 
}TASK_TCB;

//typedef struct task TASK_TCB;
//tree->t_tcb->p_tcb  ...use for loading
//tree->t_tcb->data
typedef struct tree_node {
    struct tree_node * left, * right,*next;
    TASK_TCB *t_tcb;    
}Tree;
extern Tree *SH;
extern Tree MyPartitionStorage[MQTY];
Tree * splay (TASK_TCB *, Tree * );
Tree * insert(TASK_TCB *, Tree * );
Tree * delete_n(TASK_TCB *, Tree * );
//void delete_n(TASK_TCB *);
Tree *find_min(Tree *);
  
    
    
