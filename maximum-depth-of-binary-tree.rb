# Solutin for Maximum Depth of Binary Tree
# URL: https://leetcode.com/problems/maximum-depth-of-binary-tree/

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  if root == nil
    return 0
  else
    $depth = 1
    move_depth(root, 0)
    return $depth
  end
end

def move_depth(node, parent_depth)
  if node
    parent_depth += 1
    move_depth(node.left, parent_depth)
    move_depth(node.right, parent_depth)
  else
    $depth = parent_depth if parent_depth > $depth
  end
end