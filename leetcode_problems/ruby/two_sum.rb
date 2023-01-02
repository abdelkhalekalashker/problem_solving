
#two_sum
#leetcode problem link https://leetcode.com/problems/two-sum
def two_sum(array , target)
    hash = Hash.new
    array.each_with_index do |num, index|
        if hash.has_key?(target-num)
            return [hash[target-num], index]
        else
            hash[num] = index
        end
    end
end   