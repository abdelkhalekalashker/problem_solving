# problem link
# https://leetcode.com/problems/contains-duplicate/submissions/879839150/

# @param {Integer[]} nums
# @return {Boolean}

def contains_duplicate(nums)
    hash = Hash.new(0)

    for num in nums 
        return true if hash[num] > 0
        hash[num] += 1
    end
    false
end