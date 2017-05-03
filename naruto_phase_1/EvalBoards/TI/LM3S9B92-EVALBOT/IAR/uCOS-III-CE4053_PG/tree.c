//Binary Min Heap


#include <stdlib.h>
#include <stdio.h>

#include "tree.h"
#include <os_mem.c>

// macro for the comparision 
#define CMP(a, b) ((a) <= (b))


static const unsigned int base_size = 12;

// Prepares the min heap for use
void heap_init(struct heap *h)
{

	*h = (struct heap){
		.size = base_size,
		.count = 0,
		
	};
	
}

// Inserts element to the heap
void heap_push(struct heap *h, struct task *TASK)
{
	unsigned int index, parent;

	// Resize the heap if it is too small to hold all the data
	if (h->count == h->size)
	{
		h->size <<= 1;
		
	}

	// Find out where to put the element and put it
	for(index = h->count++; index; index = parent)
	{
		parent = (index - 1) >> 1;
	//	if CMP(h->data[parent], value) break;
		if CMP(h->TASK[parent]->data, TASK->data) break;
		h->TASK[index] = h->TASK[parent];
	}
	h->TASK[index] = TASK;
}

// Removes the minimum element from the heap
void heap_pop(struct heap *h)
{
	unsigned int index, swap, other;
	struct task *temp;
	// Remove the minimum element
	temp= h->TASK[--h->count];

	// Resize the heap if it's consuming too much memory
	if ((h->count <= (h->size >> 2)) && (h->size > base_size))
	{
		h->size >>= 1;
	}

	// Reorder the elements
	for(index = 0; 1; index = swap)
	{
		// Find the child to swap with
		swap = (index << 1) + 1;
		if (swap >= h->count) break; // If there are no children, the heap is reordered
		other = swap + 1;
		if ((other < h->count) && CMP(h->TASK[other]->data, h->TASK[swap]->data)) swap = other;
		if CMP(temp->data, h->TASK[swap]->data) break; // If the bigger child is less than or equal to its parent, the heap is reordered

		h->TASK[index] = h->TASK[swap];
	}
	h->TASK[index] = temp;
} 
