# problem link
# https://leetcode.com/problems/fibonacci-number/?envType=study-plan&id=level-1
# @param {Integer} n
# @return {Integer}
def fib(n)
    return n if n<2
   fib0 = 0
   fib1 = 1
   (n).times do 
       fib0 , fib1 = fib1, fib1 + fib0
   end
   fib0
end