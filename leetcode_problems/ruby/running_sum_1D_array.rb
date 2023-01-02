# problem link


# https://leetcode.com/problems/running-sum-of-1d-array/?envType=study-plan&id=level-1


# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    sums = []
    sums[0] = nums[0]
    nums.each.with_index do |val , idx|
        sums[idx] = val + sums[idx -1] if idx > 0
            
    end
     sums

end