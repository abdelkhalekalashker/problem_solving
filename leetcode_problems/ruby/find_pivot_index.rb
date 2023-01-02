
# problem link 

# https://leetcode.com/problems/find-pivot-index/submissions/869825591/?envType=study-plan&id=level-1


# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    left = 0
    right = nums.inject(:+) 

    nums.each.with_index do |num, idx|
        right -= num
        if left == right 
            return idx
        else 
            left += num 
            
        end
    end
return -1
end