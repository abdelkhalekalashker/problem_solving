# problem link
# https://leetcode.com/problems/number-of-islands


def num_islands(grid)
    count = 0
    
    for row in (0..grid.size-1) do    
        for col in (0..grid[0].size-1) do
            if grid[row][col] == '1' 
                dfs(grid, row, col)
                count += 1
            end
        end
    end

    count
end
    
def dfs(grid, i, j)
    if i >= 0 && i < grid.size && j >= 0 && j < grid[0].size && grid[i][j] == '1'
        grid[i][j] = '0'
        dfs(grid, i+1, j)
        dfs(grid, i-1, j)
        dfs(grid, i, j-1)
        dfs(grid, i, j+1)
    end
end