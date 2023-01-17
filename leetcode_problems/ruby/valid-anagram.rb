# problem link
# https://leetcode.com/problems/valid-anagram/submissions/879842191/


# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    hasht = Hash.new(0)
    hashs = Hash.new(0)

    s.chars do |char|
        hashs[char] += 1
    end

    t.chars do |char|
        hasht[char] += 1
    end

    hasht == hashs
end