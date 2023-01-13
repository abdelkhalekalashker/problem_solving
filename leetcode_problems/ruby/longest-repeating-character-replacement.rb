# problem 
# https://leetcode.com/problems/longest-repeating-character-replacement/submissions/877665045/?envType=study-plan&id=level-1

# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
    longest_sub = 0
    left = 0
    hash_sub =Hash.new(0)

    for right in 0..s.size-1
        hash_sub[s[right]] += 1
        current_sub = right - left +1
        after_changes = hash_sub.values.max + k

        if current_sub > after_changes
            hash_sub[s[left]] -= 1
            left += 1
        end
        longest_sub = [longest_sub, right - left +1].max
    end
    longest_sub
end