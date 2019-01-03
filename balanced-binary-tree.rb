# Solutin for Balanced Binary Tree
# URL: https://leetcode.com/problems/balanced-binary-tree/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    if root
        r, _ = rec(root, 0)
        return r
    else
        return true
    end
end

def rec(node, d)
    if node
        left_r, left = rec(node.left, d + 1) 
        right_r, right = rec(node.right, d + 1)
        if left_r and right_r
            return [right, left].max - [right, left].min <= 1, [left, right].max
        else
            return false, nil
        end
    else
        return true, d
    end
end