def is_valid_sudoku(board)
  rows = Array.new(9) { Set.new }
  cols = Array.new(9) { Set.new }
  boxes = Array.new(9) { Set.new }

  board.each_with_index do |row, i|
    row.each_with_index do |val, j|
      next if val == "."

      # Calculate the index of the corresponding 3x3 box
      box_index = (i / 3) * 3 + j / 3

      # Check if the value already exists in the row, column, or box
      if rows[i].include?(val) || cols[j].include?(val) || boxes[box_index].include?(val)
        return false
      end

      # Add the value to the respective sets
      rows[i].add(val)
      cols[j].add(val)
      boxes[box_index].add(val)
    end
  end

  true
end

# Example usage:
sudoku_board = [
  ["5", "3", ".", ".", "7", ".", ".", ".", "."],
  ["6", ".", ".", "1", "9", "5", ".", ".", "."],
  [".", "9", "8", ".", ".", ".", ".", "6", "."],
  ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
  ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
  ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
  [".", "6", ".", ".", ".", ".", "2", "8", "."],
  [".", ".", ".", "4", "1", "9", ".", ".", "5"],
  [".", ".", ".", ".", "8", ".", ".", "7", "9"]
]

puts is_valid_sudoku(sudoku_board) # Output: true
