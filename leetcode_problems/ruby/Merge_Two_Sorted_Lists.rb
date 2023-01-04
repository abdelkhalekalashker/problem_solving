#problem link 
#https://leetcode.com/problems/merge-two-sorted-lists/?envType=study-plan&id=level-1

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    temp = curr = ListNode.new(0)
    
    while list1 && list2 
        if list1.val < list2.val
            curr.next = list1
            list1 = list1.next
        else 
            curr.next = list2
            list2 = list2.next
        end
        curr = curr.next
    end

    if !list1
            curr.next = list2
    end

    if !list2
            curr.next = list1
    end

    temp.next
end