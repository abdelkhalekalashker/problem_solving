# problem link
# https://leetcode.com/problems/middle-of-the-linked-list/


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    return head if head.next.nil?
    secondNode = head.next
    return secondNode if secondNode.next.nil?
    count = 2
    while secondNode
        if !secondNode.next.nil?
            count += 1
        end
        secondNode = secondNode.next 
    end

    mid = (count /2)
    while mid > 0 
        head = head.next 
        mid -=1
    end 

    return head #3

end