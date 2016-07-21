# Solution for Construct Binary Tree from Inorder and Postorder Traversal
# URL: https://leetcode.com/problems/factorial-trailing-zeroes/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
   length = inorder.size
   return nil if length == 0
   root = TreeNode.new(postorder.last) 
   root_index = nil
   for i in 0...length
    root_index = i if inorder[i] == postorder.last
   end 

   root.left = build_tree(inorder[0, root_index], postorder[0, root_index])
   root.right = build_tree(inorder[root_index + 1, length - root_index - 1],
    postorder[root_index, length - root_index - 1])

   root
end