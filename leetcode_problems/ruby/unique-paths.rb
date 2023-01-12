# problem link
# https://leetcode.com/problems/unique-paths/submissions/876816381/

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    matrix = Array.new(m) {Array.new(n)}

    (0..m-1).each do |i| 
        (0..n-1).each do |j| 
            if i==0 || j == 0
                matrix[i][j] = 1 
            else
                matrix[i][j] = matrix[i][j-1] + matrix[i-1][j] 
            end
        end
    end

    matrix[m-1][n-1]
end