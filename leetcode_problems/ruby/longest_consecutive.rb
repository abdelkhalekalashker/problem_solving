# problem link 
# https://leetcode.com/problems/longest-consecutive-sequence


# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    hash = {}
    nums.each do |num|
        hash[num] = 1
    end
    max = 0
    
    hash.each do |k,v|
        if !hash.has_key?(k-1) 
            count = 0
            while hash.has_key?(k+count) 
                count += 1
            end

            max = count if count > max
        end
         
        
    end
    max
end

