#include <stdlib.h>
#include <stdio.h>
#include <os.h>
//#include "tree.h"
//#include "st_type.h"
#define MQTY 5                   // max of the task of the size struct tree 
extern OS_MEM  MyPartition1;      
extern OS_ERR m_err1;
#define TRUE 1
#define FALSE 0
typedef struct task_tcb1{
  int period;
  int data; 
  OS_TCB *p_tcb;
 
}TASK_TCB1;

//typedef struct task TASK_TCB;
//tree->t_tcb->p_tcb  ...use for loading
//tree->t_tcb->data
typedef struct node_n{
        struct node_n *l;
        struct node_n *r;
        struct node_n *p;
        TASK_TCB1 *t_tcb;
}Node;

extern Node *root1;
extern Node MyPartition1Storage[MQTY];
void Insert(int,int,OS_TCB *);
void Splay(Node *);
void leftRotate(Node *);
void rightRotate(Node *);
/*void Inorder(Node *);*/
Node* Find(TASK_TCB1 *);
int Erase(TASK_TCB1 *);

    
    
