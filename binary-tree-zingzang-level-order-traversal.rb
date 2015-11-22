# Solutin for Binary Tree Zigzag Level Order Traversal
# URL: https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}

$even_level = []
$odd_level = []
$my_result = []

def zigzag_level_order(root)
    $my_result = []
    
    $even_level << root if root
    begin
        even2odd
        odd2even
    end until $even_level.length == 0 && $odd_level.length == 0
    $my_result
end

def even2odd
    buff = []
    $even_level.each do |even|
        buff << even.val
        $odd_level << even.left if even.left
        $odd_level << even.right if even.right
    end
    $my_result << buff if buff.length > 0
    $even_level = []
end

def odd2even
    buff = []
    $odd_level.each do |odd|
        buff.insert(0, odd.val)
        $even_level << odd.left if odd.left
        $even_level << odd.right if odd.right
    end
    $my_result << buff if buff.length > 0
    $odd_level = []
end