# problem link
# https://leetcode.com/problems/backspace-string-compare/?envType=study-plan&id=level-1





# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    stackS = []
    stackT = []

    s.chars do |ele|
        if ele=="#" 
            stackS.pop if !stackS.empty?
        else 
            stackS.push(ele)
        end
    end

    t.chars do |ele|
        if ele=="#" 
            stackT.pop if !stackT.empty?
        else 
            stackT.push(ele)
        end
    end

    stackS == stackT
end