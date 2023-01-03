# problem link

# https://leetcode.com/problems/isomorphic-strings/?envType=study-plan&id=level-1

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    hash = {}
    
        s.each_char.with_index do |s_char, idx|
            if hash.has_key?(s_char)
                if hash[s_char] != t[idx]
                    return false
                end
            else
                if hash.has_value?(t[idx])
                    return false 
                end
    
                hash[s_char] = t[idx]
            end
        end
    
        return true
    
    
    
            # old code 
        #----------------------------------------------------- 
    #     hash1={}
    
    #     s.each_char.with_index do |char,idx|
    #         return false if hash1.has_key?(char) && hash1[char] != t[idx]
    #         hash1[char] = t[idx]
    #     end
    
    
    #     hash2={}
    
    #     t.each_char.with_index do |char,idx|
    #         return false if hash2.has_key?(char) && hash2[char] != s[idx]
    #         hash2[char] = s[idx]
    #     end
    
    # return true
    #----------------------------------------------------------------------
    
    end