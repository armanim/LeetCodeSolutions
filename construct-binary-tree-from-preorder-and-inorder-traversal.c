/**
 *  Solution for Construct Binary Tree from Preorder and Inorder Traversal
 *  URL: https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
 */

/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */


struct TreeNode *buildTree(int *preorder, int preorderSize, int *inorder, int inorderSize)
{
    if (preorderSize == 0) {
        return 0;
    }

    // root
    struct TreeNode *node = malloc(sizeof(struct TreeNode));
    node->val = preorder[0];

    // left child
    int leftSize = indexOf(inorder, inorderSize, preorder[0]);
    node->left = buildTree(preorder + 1, leftSize, inorder, leftSize);

    // right chile
    int rightSize = inorderSize - leftSize - 1;
    node->right = buildTree(preorder + leftSize + 1, rightSize, inorder + leftSize + 1, rightSize);

    return node;
}

int indexOf(int *array, int arraySize, int element)
{
    int i;

    for (i = 0; i < arraySize; i++)
    {
        if (array[i] == element) {
            return i;
        }
    }

    return -1;
}