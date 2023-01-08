# problem link
# https://leetcode.com/problems/n-ary-tree-preorder-traversal/submissions/874273022/?envType=study-plan&id=level-1


# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def preorder(root)
    stack = []
    return stack if ! root

    result = []
    stack.push(root)

    while(!stack.empty?)do
        root = stack.pop
        result.push(root.val)
        i=(root.children.size) -1
        while(i>=0) do
            stack.push(root.children[i]) if root.children[i]
            i -= 1
        end
    end

    result

end