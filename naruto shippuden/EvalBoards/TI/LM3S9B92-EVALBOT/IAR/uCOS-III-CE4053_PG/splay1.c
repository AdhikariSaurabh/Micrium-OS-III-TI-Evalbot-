#include <stdio.h>
#include <stdlib.h>
#include "splay1.h"


Node *root1 = NULL;
OS_MEM  MyPartition1;
OS_ERR m_err1;
Node MyPartition1Storage[MQTY];
void rightRotate(Node *P)
{
        Node *T=P->l;
        Node *B=T->r;
        Node *D=P->p;
        if(D)
        {
                if(D->r==P) D->r=T;
                else D->l=T;
        }
        if(B)
                B->p=P;
        T->p=D;
        T->r=P;
        
        P->p=T;
        P->l=B;
}
void leftRotate(Node *P)
{
        Node *T=P->r;
        Node *B=T->l;
        Node *D=P->p;
        if(D)
        {
                if(D->r==P) D->r=T;
                else D->l=T;
        }
        if(B)
                B->p=P;
        T->p=D;
        T->l=P;
        
        P->p=T;
        P->r=B;
}

void Splay(Node *T)
{
        while(TRUE)
        {
                Node *p=T->p;
                if(!p) break;
                Node *pp=p->p;
                if(!pp)//Zig
                {
                        if(p->l==T)
                                rightRotate(p);
                        else
                                leftRotate(p);
                        break;
                }
                if(pp->l==p)
                {
                        if(p->l==T)
                        {//ZigZig
                                rightRotate(pp);
                                rightRotate(p);
                        }
                        else
                        {//ZigZag
                                leftRotate(p);
                                rightRotate(pp);
                        }
                }
                else
                {
                        if(p->l==T)
                        {//ZigZag
                                rightRotate(p);
                                leftRotate(pp);
                        }
                        else
                        {//ZigZig
                                leftRotate(pp);
                                leftRotate(p);
                        }
                }
        }
        root1=T;
}
void Insert(int period,int data,OS_TCB *p_tcb)
{    
       TASK_TCB1 temp;
      temp.period=period;
      temp.data=data;
      temp.p_tcb=p_tcb;
        if(!root1)
        {
                root1=(Node *)OSMemGet((OS_MEM *)&MyPartition1,(OS_ERR *)&m_err1);
                root1->l=NULL;
                root1->r=NULL;
                root1->p=NULL;
                root1->t_tcb=&temp;
                return;
        }
        Node *P=root1;
        while(TRUE)
        {
                if(P->t_tcb->data==data) break; // not multiset
                if(data < (P->t_tcb->data) )
                {
                        if(P->l) P=P->l;
                        else
                        {
                                P->l=(Node *)OSMemGet((OS_MEM *)&MyPartition1,(OS_ERR *)&m_err1);
                                P->l->p=P;
                                P->l->r=NULL;
                                P->l->l=NULL;
                                P->l->t_tcb=&temp;
                                P=P->l;
                                break;
                        }
                }
                else
                {
                        if(P->r) P=P->r;
                        else
                        {
                                P->r=(Node *)OSMemGet((OS_MEM *)&MyPartition1,(OS_ERR *)&m_err1);
                                P->r->p=P;
                                P->r->r=NULL;
                                P->r->l=NULL;
                                P->r->t_tcb=&temp;
                                P=P->r;
                                break;
                        }
                }
        }
        Splay(P);
}/*
void Inorder(Node *R)
{
        if(!R) return;
        Inorder(R->l);
        printf("v: %d ",R->v);
        if(R->l) printf("l: %d ",R->l->v);
        if(R->r) printf("r: %d ",R->r->v);
        puts("");
        Inorder(R->r);
}*/
Node* Find(TASK_TCB1 *v)
{
        if(!root1) return NULL;
        Node *P=root1;
        while(P)
        {
                if(P->t_tcb->data==v->data)
                        break;
                if(v->data<(P->t_tcb->data))
                {
                        if(P->l)
                                P=P->l;
                        else
                                break;
                }
                else
                {
                        if(P->r)
                                P=P->r;
                        else
                                break;
                }
        }
        Splay(P);
        if(P->t_tcb->data==v->data) return P;
        else return NULL;
}
int Erase(TASK_TCB1 *v)
{
        Node *N=Find(v);
        if(!N) return FALSE;
        Splay(N); //check once more;
        Node *P=N->l;
        if(!P)
        {
                root1=N->r;
                root1->p=NULL;
                OSMemPut((OS_MEM  *)&MyPartition1,                              
                 (void    *)N,                                  
                 (OS_ERR  *)&m_err1);
                return TRUE;
        }
        while(P->r) P=P->r;
        if(N->r)
        {
                P->r=N->r;
                N->r->p=P;
        }
        root1=N->l;
        root1->p=NULL;
       OSMemPut((OS_MEM  *)&MyPartition1,                              
                 (void    *)N,                                  
                 (OS_ERR  *)&m_err1);
        return TRUE;
}
