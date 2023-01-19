# problem link 
# https://leetcode.com/problems/top-k-frequent-elements/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    hash = nums.tally 
    hash1 = hash.sort_by{|k, v| -v}
    res =[]

    for i in 0...k
        res << hash1[i][0]
    end

    res

end