# problem link on leetcode
# https://leetcode.com/problems/longest-palindrome


# @param {String} s
# @return {Integer}
def longest_palindrome(s)
    return s.size  if s.size < 2
      freq = Hash.new(0)
    s.each_char do |char|
      freq[char] += 1
    end
      max = 0
    freq.each do |k,v|
      if v%2 == 0 
          max += v
      else 
          max += v -1
      end
    end
    max += 1
    max = max > s.size ?  s.size : max
    return max
  end