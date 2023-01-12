# problem link
# https://leetcode.com/problems/climbing-stairs

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    arr = Array.new(n,0)
    arr[0]=1
    arr[1]=2
    for i in 2..n-1 do
        arr[i] = arr[i-2]+arr[i-1]
    end
    arr[n-1]
end