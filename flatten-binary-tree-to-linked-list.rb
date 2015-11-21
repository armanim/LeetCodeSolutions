# Solutin for Flatten Binary Tree to Linked List
# URL: https://leetcode.com/problems/flatten-binary-tree-to-linked-list/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    if root != nil
        flatten(root.left)
        insert root if root.left
        flatten(root.right)
    end
end

def insert(node)
    buff_node = node.left
    while buff_node.right != nil
        buff_node = buff_node.right
    end

    node.left, node.right, buff_node.right = nil, node.left, node.right
end