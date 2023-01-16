# problem link on leetcode
# https://leetcode.com/problems/top-k-frequent-words/submissions/879209332/?envType=study-plan&id=level-1

# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
    hash = Hash.new(0)

    words.each do |word|
        hash[word] += 1
    end

    hash1 = hash.sort_by {|k, v| [-v, k ] }
    arr = []
    for i in 0...k
        arr << hash1[i][0]
    end
arr
end