// C program to delete a node from AVL Tree
#include<stdio.h>
#include<stdlib.h>
#include"avl.h"
#include<os.h>
 
// An AVL tree node

 
// A utility function to get maximum of two integers

 
// A utility function to get height of the tree

ATree *AT = NULL;
OS_MEM  AMyPartition;
OS_ERR am_err;
ATree AMyPartitionStorage[6];
int system_ceiling=0;



int height(struct ANode *N)
{
    if (N == NULL)
        return 0;
    return N->height;
}
 
// A utility function to get maximum of two integers
int max(int a, int b)
{
    return (a > b)? a : b;
}
 
/* Helper function that allocates a new node with the given key and
    NULL left and right pointers. */
struct ANode* AnewNode(MCB *m) //MCB
{
    struct ANode* node = (ATree *) OSMemGet((OS_MEM *)&AMyPartition,(OS_ERR *)&am_err); //OS MEM PUT
    
    node->m_cb= m;     //assign MCB
   
    
    
    
    node->left   = NULL;
    node->right  = NULL;
    node->next= NULL;
    node->height = 1;  // new node is initially added at leaf
    return(node);
}
 
// A utility function to right rotate subtree rooted with y
// See the diagram given above.
struct ANode *ArightRotate(struct ANode *y)
{
    struct ANode *x = y->left;
    struct ANode *T2 = x->right;
 
    // Perform rotation
    x->right = y;
    y->left = T2;
 
    // Update heights
    y->height = max(height(y->left), height(y->right))+1;
    x->height = max(height(x->left), height(x->right))+1;
 
    // Return new root
    return x;
}
 
// A utility function to left rotate subtree rooted with x
// See the diagram given above.
struct ANode *AleftRotate(struct ANode *x)
{
    struct ANode *y = x->right;
    struct ANode *T2 = y->left;
 
    // Perform rotation
    y->left = x;
    x->right = T2;
 
    //  Update heights
    x->height = max(height(x->left), height(x->right))+1;
    y->height = max(height(y->left), height(y->right))+1;
 
    // Return new root
    return y;
}
 
// Get Balance factor of node N
int getBalance(struct ANode *N)
{
    if (N == NULL)
        return 0;
    return height(N->left) - height(N->right);
}
 
struct ANode* Ainsert(struct ANode* node, MCB *m)  //MCB
{
    /* 1.  Perform the normal BST rotation */
    if (node == NULL)
        return(AnewNode(m)); //MCB
 
    if (m->res_ceil < node->m_cb->res_ceil)  //comp mcb->resceil
        node->left  = Ainsert(node->left, m); //MCB
    else if (m->res_ceil > node->m_cb->res_ceil) //comp-> resceil
        node->right = Ainsert(node->right, m); //MCB
    else //else
    {
      ATree *n=AnewNode(m);
      ATree *temp=node;
      while(node->next != NULL){
            node=node->next;}
      node->next= n;
      return temp;
     
    }
      // Equal keys not allowed
      
 
    /* 2. Update height of this ancestor node */
    node->height = 1 + max(height(node->left),
                           height(node->right));
 
    /* 3. Get the balance factor of this ancestor
          node to check whether this node became
          unbalanced */
    int balance = getBalance(node);
 
    // If this node becomes unbalanced, then there are 4 cases
 
    // Left Left Case
    if (balance > 1 && m->res_ceil < node->left->m_cb->res_ceil)    //receil    
        return ArightRotate(node);
 
    // Right Right Case
    if (balance < -1 && m->res_ceil > node->right->m_cb->res_ceil)  //receil
        return AleftRotate(node);
 
    // Left Right Case
    if (balance > 1 && m->res_ceil > node->left->m_cb->res_ceil)   //receil
    {
        node->left =  AleftRotate(node->left);
        return ArightRotate(node);
    }
 
    // Right Left Case
    if (balance < -1 && m->res_ceil < node->right->m_cb->res_ceil)  //receil
    {
        node->right = ArightRotate(node->right);
        return AleftRotate(node);
    }
 
    /* return the (unchanged) node pointer */
    return node;
}
 
/* Given a non-empty binary search tree, return the
   node with minimum key value found in that tree.
   Note that the entire tree does not need to be
   searched. */
struct ANode * minValueNode(struct ANode* node)
{
    struct ANode* current = node;
 
    /* loop down to find the leftmost leaf */
    while (current->left != NULL)
        current = current->left;
 
    return current;
}
 
// Recursive function to delete a node with given key
// from subtree with given root. It returns root of
// the modified subtree.
struct ANode* AdeleteNode(struct ANode* root, MCB *m)  //MCB
{
    // STEP 1: PERFORM STANDARD BST DELETE
 
    if (root == NULL)
        return root;
 
    // If the key to be deleted is smaller than the
    // root's key, then it lies in left subtree
    if ( m->res_ceil < root->m_cb->res_ceil )  //receil
        root->left = AdeleteNode(root->left, m);  //MCB
 
    // If the key to be deleted is greater than the
    // root's key, then it lies in right subtree
    else if( m->res_ceil > root->m_cb->res_ceil )            //receil
        root->right = AdeleteNode(root->right, m); //MCB  
 
    // if key is same as root's key, then This is
    // the node to be deleted
    else
    {
       if(root->next==NULL)
       {
        // node with only one child or no child
        if( (root->left == NULL) || (root->right == NULL) )
        {
            struct ANode *temp = root->left ? root->left :
                                             root->right;
 
            // No child case
            if (temp == NULL)
            {
                temp = root;
                root = NULL;
            }
            else // One child case
            {*root = *temp;} // Copy the contents of
                            // the non-empty child
            
                temp->m_cb=NULL;
		temp->left=NULL;
		temp->right=NULL;
                temp->next=NULL;
		temp->height=0;
			
		OSMemPut((OS_MEM  *)&AMyPartition,                              
                 (void    *)temp,                                  
                 (OS_ERR  *)&am_err);
			
			
			
			//free(temp);
        }
        else
        {
            // node with two children: Get the inorder
            // successor (smallest in the right subtree)
            struct ANode* temp = minValueNode(root->right);
 
            // Copy the inorder successor's data to this node
            root->m_cb = temp->m_cb;     //MCB
 
            // Delete the inorder successor
            root->right = AdeleteNode(root->right, temp->m_cb);
        }
       }
       else  //copy found; delete from a linked list
       {
         
         
         ATree *temp=root,*prev=NULL;
         
        if(root->m_cb->p_mutex==m->p_mutex)
        {   
         root->next->left=root->left;
         root->next->right=root->right;
         root=root->next;
         
         temp->next=NULL;
         temp->right=NULL;
         temp->left=NULL;
         temp->m_cb=NULL;
         
         OSMemPut((OS_MEM  *)&AMyPartition,                              
                 (void    *)temp,                                  
                 (OS_ERR  *)&am_err);
         return root;
        }
        else
        {
          
          while(root->m_cb->p_mutex!=m->p_mutex){prev=root;root=root->next;}
          prev->next=root->next;         
         
          root->next=NULL;
          root->right=NULL;
          root->left=NULL;
          root->m_cb=NULL;
          root->height=0;
          OSMemPut((OS_MEM  *)&AMyPartition,                              
                 (void    *)root,                                  
                 (OS_ERR  *)&am_err);
         return temp;
          
        }
       
       }
    
    
    
    
    }
 
    // If the tree had only one node then return
    if (root == NULL)
      return root;
 
    // STEP 2: UPDATE HEIGHT OF THE CURRENT NODE
    root->height = 1 + max(height(root->left),
                           height(root->right));
 
    // STEP 3: GET THE BALANCE FACTOR OF THIS NODE (to
    // check whether this node became unbalanced)
    int balance = getBalance(root);
 
    // If this node becomes unbalanced, then there are 4 cases
 
    // Left Left Case
    if (balance > 1 && getBalance(root->left) >= 0)
        return ArightRotate(root);
 
    // Left Right Case
    if (balance > 1 && getBalance(root->left) < 0)
    {
        root->left =  AleftRotate(root->left);
        return ArightRotate(root);
    }
 
    // Right Right Case
    if (balance < -1 && getBalance(root->right) <= 0)
        return AleftRotate(root);
 
    // Right Left Case
    if (balance < -1 && getBalance(root->right) > 0)
    {
        root->right = ArightRotate(root->right);
        return AleftRotate(root);
    }
 
    return root;
}

void set_min_sys_ceil(ATree *rt)
{
 ATree *temp1;
 temp1=rt; 
 if(rt==NULL)
 {
  system_ceiling=0;
 }
 else
 {
  while(temp1->left!=NULL)
  {
     temp1=temp1->left;
  }
  system_ceiling=temp1->m_cb->res_ceil;
  } 
}