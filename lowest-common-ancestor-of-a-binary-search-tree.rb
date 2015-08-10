# Solutin for Lowest Common Ancestor of a Binary Search Tree
# URL: https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
    $stack_p = []
    $stack_q = []
    search(root, p.val, $stack_p)
    search(root, q.val, $stack_q)
    get_result
end

def search(node, item, stack)
    $found = false
    process(node, item, stack)
end

def process(node, item, stack)
    if node
        stack.push node if !$found
        if node.val == item
            $found = true
        else
            if node.left || node.right
                if node.left
                    process(node.left, item, stack)
                end
                if node.right
                    process(node.right, item, stack)
                end
            end
            stack.pop if !$found
        end
    end
end

def get_result()
    (0..$stack_q.length).to_a.each do |i|
        return $stack_q[i-1] if i == $stack_p.length || i == $stack_q.length || $stack_q[i].val != $stack_p[i].val
    end
end