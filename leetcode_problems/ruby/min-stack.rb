
# problem link 
# https://leetcode.com/problems/min-stack

class MinStack
    def initialize()
        @stack = []
        @mStack = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        @stack.push(val)
        @mStack.push(val) if  @mStack.empty? || val <= @mStack.last 
    end


=begin
    :rtype: Void
=end
    def pop()
        @mStack.pop if @stack.pop == @mStack.last
    end


=begin
    :rtype: Integer
=end
    def top()
        @stack.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @mStack.last
    end
    


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()