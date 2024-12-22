def rotate(matrix)
  n = matrix.length

 
  (0...n).each do |i|
    (i...n).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end

 
  matrix.each { |row| row.reverse! }

  matrix
end

matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
p rotate(matrix) 
