# problem link
# https://leetcode.com/problems/binary-search/submissions/874306769/?envType=study-plan&id=level-1


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    left =0 
    right =(nums.length) -1

    while(left <= right)
        mid = left + (right - left)/2
        return mid if nums[mid] == target

        if(target > nums[mid])
            left= mid +1
        else
            right = mid -1
        end
    end
return -1
    
end