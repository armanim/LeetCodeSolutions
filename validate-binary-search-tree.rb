# Solutin for Validate Binary Search Tree
# URL: https://leetcode.com/problems/validate-binary-search-tree/

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
def is_valid_bst(root)
    $result = true
    $list = []
    throw(root)
    validation($list)
    $result
end

def throw(node)
    if node != nil
        throw(node.left)
        $list << node.val
        throw(node.right)
    end
end

def validation(list)
    (0...list.length).to_a.each do |index|
        if index < list.length - 1
            if list[index] >= list[index + 1]
                $result = false
            end
        end
    end
end