# problem link
# https://leetcode.com/problems/group-anagrams/

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    return [strs] if strs.size < 2
    anagrams = Hash.new{|h , k| h[k] = []}

    strs.each do |str|
        sorted = str.chars.sort
       anagrams[sorted] << str
    end
    anagrams.values
end