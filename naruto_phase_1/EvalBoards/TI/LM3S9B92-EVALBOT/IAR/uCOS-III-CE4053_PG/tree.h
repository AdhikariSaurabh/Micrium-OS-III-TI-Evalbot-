
#include <os.h>
struct task{
	int data;
        int period;
	OS_TCB *p_tcb;
};

struct heap
{
	unsigned int size; // Size of the allocated memory (in number of items)
	unsigned int count; // Count of the elements in the heap
	struct task *TASK[5]; // Array with the elements
};


/*
struct heap_node {
	struct heap_node* 	parent;
	struct heap_node* 	next;
	struct heap_node* 	child;

	unsigned int 		degree;
	void*			value;//data
        int                     period;
        OS_TCB                  *p_tcb;
	struct heap_node**	ref;
};

struct heap_ds {
	struct heap_node* 	head;
	struct heap_node*	min;
        int                    count=0;
};

static int token_cmp(struct heap_node* _a, struct heap_node* _b)
{
	struct token *a, *b;
	a = (struct token*) heap_node_value(_a);
	b = (struct token*) heap_node_value(_b);
	return a->prio < b->prio;
}

typedef int (*heap_prio_t)(struct heap_node* a, struct heap_node* b);
*/

  
void heap_init(struct heap *h);
void heap_push(struct heap *h, struct task *TASK);
void heap_pop(struct heap *h);

// Returns the biggest element in the heap
#define heap_front(h) (*(h)->TASK)

// Frees the allocated memory
#define heap_term(h) (free((h)->TASK))

void heapify(int data[], unsigned int count);