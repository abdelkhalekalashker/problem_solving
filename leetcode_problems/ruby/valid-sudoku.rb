# problem link

# https://leetcode.com/problems/valid-sudoku/submissions/881806747/

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    cols = Array.new(9){Set.new}
    rows = Array.new(9){Set.new}
    sub_boxes = Array.new(3){Array.new(3) {Set.new}}

    board.each.with_index do |row , rowNum|
        row.each.with_index do |ele , colNum|
            next if ele == "."
            return false unless cols[colNum].add?(ele) && rows[rowNum].add?(ele) && sub_boxes[rowNum/3][colNum/3].add?(ele)
        end
    end
    true
end