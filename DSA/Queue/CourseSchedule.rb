class Solution
  def can_finish(num_courses, prerequisites)
    adj_list = Array.new(num_courses) { [] }
    in_degree = Array.new(num_courses, 0)

    prerequisites.each do |course, prereq|
      adj_list[prereq] << course
      in_degree[course] += 1
    end

    queue = []
    num_courses.times { |i| queue.push(i) if in_degree[i] == 0 }

    courses_taken = 0
    while !queue.empty?
      course = queue.shift
      courses_taken += 1

      adj_list[course].each do |dependent_course|
        in_degree[dependent_course] -= 1
        queue.push(dependent_course) if in_degree[dependent_course] == 0
      end
    end

    courses_taken == num_courses
  end
end

solution = Solution.new
puts solution.can_finish(2, [[1, 0]])
puts solution.can_finish(2, [[1, 0], [0, 1]])
