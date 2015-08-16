# Solutin for Invert Binary Tree
# URL: https://leetcode.com/problems/invert-binary-tree/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
	process_tree(root)
	root
end


def process_tree(node)
	if node
		process_tree(node.left)
		node.left, node.right = node.right, node.left
		process_tree(node.left)
	end
end