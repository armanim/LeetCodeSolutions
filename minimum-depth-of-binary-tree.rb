# Solutin for Minimum Depth of Binary Tree
# URL: https://leetcode.com/problems/minimum-depth-of-binary-tree/

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
  if root == nil
    return 0
  else
    $depth = 99999
    move_depth(root, 0)
    return $depth
  end
end

def move_depth(node, parent_depth)
  if node and (node.left or node.right)
    parent_depth += 1
    move_depth(node.left, parent_depth)
    move_depth(node.right, parent_depth)
  elsif node # is leaf
    parent_depth += 1
    $depth = parent_depth if parent_depth < $depth
  end
end