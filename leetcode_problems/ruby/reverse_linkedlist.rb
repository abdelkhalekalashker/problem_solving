#problem link 
#https://leetcode.com/problems/reverse-linked-list


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
def reverse_list(head)
    prev =nil
    return head unless head
    while head 
        current = head 
        head = head.next
        current.next = prev
        prev = current 
    end

    return prev
end