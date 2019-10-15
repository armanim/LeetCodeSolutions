/**
 *  Solution for Binary Tree Level Order Traversal
 *  URL: https://leetcode.com/problems/binary-tree-level-order-traversal/
 */

struct QueueNode
{
    struct TreeNode *val;
    struct QueueNode *next;
};

/**
 * Queue start
 */
struct QueueNode *pQueueHead;
struct QueueNode *pQueueTail;

void enqueue(struct TreeNode* val)
{
    struct QueueNode *ptr = malloc(sizeof(struct QueueNode));
    ptr->val = val;
    if (!pQueueHead) {
        pQueueHead = ptr;
        pQueueTail = ptr;
    } else {
        pQueueTail->next = ptr;
        pQueueTail = ptr;
    }
}

void dequeue()
{
    struct QueueNode *pNode = pQueueHead;
    if (pQueueHead == pQueueTail)
    {
        pQueueHead = pQueueTail = NULL;
    } else
    {
        pQueueHead = pQueueHead->next;
    }
    free(pNode);
}

struct TreeNode* front()
{
    return pQueueHead->val;
}

void printQueue()
{
    struct QueueNode *n = pQueueHead;
    while (n)
    {
        printf("%d\n", n->val->val);
        n = n->next;
    }
}

/**
 * Queue end
 */

/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

/**
 * Return an array of arrays of size *returnSize.
 * The sizes of the arrays are returned as *returnColumnSizes array.
 * Note: Both returned array and *columnSizes array must be malloced, assume caller calls free().
 */
int** levelOrder(struct TreeNode* root, int* returnSize, int** returnColumnSizes){
    int** arr = malloc(1000 * sizeof(int*));
    int lastSize = 0;
    int size = 0;
    *returnSize = 0;
    *returnColumnSizes = malloc(1000 * sizeof(int));
    
    if (!root)
    {
        return arr;
    }

    enqueue(root);
    lastSize++;
    
    arr[*returnSize] = malloc(lastSize * sizeof(int));
    (*returnColumnSizes)[*returnSize] = lastSize;
    

    while (pQueueHead)
    {
        struct TreeNode* pTreeNode = front();
        dequeue();
        
        arr[*returnSize][(*returnColumnSizes)[*returnSize] - lastSize] = pTreeNode->val;
        lastSize--;
        
        if (pTreeNode->left)
        {
            enqueue(pTreeNode->left);
            size++;
        }

        if (pTreeNode->right)
        {
            enqueue(pTreeNode->right);
            size++;
        }

        if (lastSize == 0 && pQueueHead) {
            lastSize = size;
            size = 0;
            arr[++(*returnSize)] = malloc(lastSize * sizeof(int));
            (*returnColumnSizes)[*returnSize] = lastSize;
        }
    }
    
    (*returnSize)++;
    
    return arr;
}