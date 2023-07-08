# problem link
#https://leetcode.com/problems/merge-sorted-array/?envType=study-plan-v2&envId=top-interview-150


# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)

   return nums1 unless n > 0 
    nums2.each_with_index do |ele, idx|
        nums1[m+idx] = ele
    end
    nums1.sort!
end
