#problem link
# https://leetcode.com/problems/validate-binary-search-tree/submissions/874748416/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
    return true if root.nil?
    is_valid_bst_rec(root, -Float::INFINITY, Float::INFINITY)
  end
  
  def is_valid_bst_rec(root, min, max)
    return true if root.nil?
    
    if root.val <= min || root.val >= max
      return false
    else
      is_valid_bst_rec(root.left, min, root.val) && is_valid_bst_rec(root.right, root.val, max)
    end
  end