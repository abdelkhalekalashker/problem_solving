# problem link 
# https://leetcode.com/problems/valid-parentheses/submissions/882082293/

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    s.chars.each do |ele|

        case ele

        when  '(' ,  '[' ,  '{'
            stack.push(ele)
        when ']'
            return false if stack.pop != '['
        when "}"
            return false if stack.pop != '{'
        when ')'
            return false if stack.pop != '('
        end
        
    end
    stack.empty?
end