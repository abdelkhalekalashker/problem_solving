# problem link
# https://leetcode.com/problems/binary-tree-level-order-traversal/submissions/874294053/?envType=study-plan&id=level-1




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
# @return {Integer[][]}
def level_order(root)

    return [] unless root
    queue = []
    queue.push(root)
    result = []

    until queue.empty?
    result << queue.map { |node| node.val }
    queue.size.times do
            root = queue.shift
            queue.push(root.left) if (root.left)
            queue.push(root.right) if (root.right)
        end
    end

result
    
end