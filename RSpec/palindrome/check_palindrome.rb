class Palindrome
  def initialize(string)
    @string = string
  end
  def is_palindrome?
    return false if @string.empty?
    cleaned_string = @string.gsub(/[^a-zA-Z0-9]/,'').downcase
    cleaned_string == cleaned_string.reverse
  end
end
checker = Palindrome.new("A man, a plan, a canal, Panama")
puts checker.is_palindrome?