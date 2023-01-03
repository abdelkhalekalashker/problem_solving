# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)

    j =0 

    t.each_char.with_index do |ele, idx|
        if ele == t[j]
            j+=1
        end
    end

    j == s.length

#brute force solution
#------------------------------------------------------------
    # array = Array.new(200,0)
    # word =""
    # t.each_char do |ele|
    #     array[ele.ord] = 1
    # end

    # s.each_char do |ele|
    #     if !(array[ele.ord] > 0 )
    #         return false
    #     end
    #    word += ele
    # end

    # if word == s
    #     return true
    # else
    #     return false
    # end
    #---------------------------------
    
    # s.each_char do |ele|
    #     if !t.include?(ele)
    #         return false
    #     end
    # end

    # true
    #----------------------------------
end