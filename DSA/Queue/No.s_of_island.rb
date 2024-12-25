class Solution
  def num_islands(grid)
    return 0 if grid.empty?
    
    m, n = grid.length, grid[0].length
    count = 0
    
    def dfs(grid, i, j, m, n)
     
      return if i < 0 || j < 0 || i >= m || j >= n || grid[i][j] == '0'
  
      grid[i][j] = '0'
      
     
      dfs(grid, i + 1, j, m, n)
      dfs(grid, i - 1, j, m, n)
      dfs(grid, i, j + 1, m, n)
      dfs(grid, i, j - 1, m, n)
    end
    
    
    for i in 0...m
      for j in 0...n
        
        if grid[i][j] == '1'
          dfs(grid, i, j, m, n)
          count += 1
        end
      end
    end
    
    count
  end
end


grid = [
  ['1', '1', '1', '1', '0'],
  ['1', '1', '0', '1', '0'],
  ['1', '1', '0', '0', '0'],
  ['0', '0', '0', '0', '0']
]

solution = Solution.new
puts solution.num_islands(grid)  
