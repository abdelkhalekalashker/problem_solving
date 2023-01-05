# link of the problem 
# https://leetcode.com/problems/linked-list-cycle-ii

def detectCycle(head)
    hash_nodes = {}
    return  nil if head.nil? || head.next.nil? 
    pointer = head.next
    hash_nodes[head] = true
    while pointer
      
      if hash_nodes.key?(pointer)
        return pointer
      end
      hash_nodes[pointer] = true
      pointer = pointer.next
    end
    return 
  end
  