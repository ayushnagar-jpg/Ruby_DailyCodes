require 'rspec'
require_relative 'check_palindrome.rb'

RSpec.describe Palindrome do
  let(:palindrome_checker) {Palindrome.new("A man, a plan, a canal, Panama")}
  describe '#is_palindrome?' do
    it 'return true for a palindrome string' do
      expect(palindrome_checker.is_palindrome?).to be(true)
    end
    it 'returns false for a non-palindrome string' do
      non_palindrome_checker = Palindrome.new("hello")
      expect(non_palindrome_checker.is_palindrome?).to be(false)
    end
    it 'returns false for an empty string' do
      empty_string_checker = Palindrome.new("")
      expect(empty_string_checker.is_palindrome?).to be(false)
    end
  end
end