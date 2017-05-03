#include<stdio.h>
#include<stdlib.h>
#include<os.h>
extern OS_MEM  AMyPartition;      
extern OS_ERR am_err;





typedef struct mutex_ctr_blk
{
	int res_ceil;
	OS_MUTEX *p_mutex;
	
}MCB;

typedef struct ANode
{
    MCB *m_cb;//repl with MCB
    struct ANode *left;
    struct ANode *right;
    struct ANode *next;
    int height;
}ATree;

extern ATree *AT;
extern ATree AMyPartitionStorage[6];

extern int system_ceiling;



int max(int, int);
int height(struct ANode *);
struct ANode* AnewNode(MCB *);
struct ANode *ArightRotate(struct ANode *);
struct ANode *ArightRotate(struct ANode *);
struct ANode *AleftRotate(struct ANode *);
int getBalance(struct ANode *);
struct ANode* Ainsert(struct ANode*, MCB *);
struct ANode * minValueNode(struct ANode* );
struct ANode* AdeleteNode(struct ANode* , MCB *);
void set_min_sys_ceil(ATree *);