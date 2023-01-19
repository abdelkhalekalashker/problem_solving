# problem link 
# https://leetcode.com/problems/product-of-array-except-self


# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    prefix = []

    temp =1
    nums.each.with_index do |num , idx|
        prefix[idx] = temp 
        temp = temp * num
    end

    temp = 1

    count = nums.size-1
    while count >= 0 
        prefix[count] *= temp 
        temp *= nums[count]
        count -=1
    end

    prefix
end