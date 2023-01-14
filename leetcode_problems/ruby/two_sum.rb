
#two_sum
#leetcode problem link https://leetcode.com/problems/two-sum

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash_nums =Hash.new(-1)
    nums.each.with_index do |num , idx|
        hash_nums[num] = idx
    end

    for i in 0...nums.size
        rest = target - nums[i]
        if hash_nums[rest] >=0 and i != hash_nums[rest]
            return [i ,hash_nums[rest] ]
        end
    end

    []

end