require 'rspec'
require_relative 'string_manipulation'

RSpec.describe StringManipulator do
  let(:manipulator) { StringManipulator.new }

  describe '#reverse_words' do
    it 'reverses the words in a sentence' do
      sentence = "Hello world"
      expect(manipulator.reverse_words(sentence)).to eq("world Hello")
    end

    it 'handles a sentence with punctuation correctly' do
      sentence = "Hello, world!"
      expect(manipulator.reverse_words(sentence)).to eq("world! Hello,")
    end

    it 'returns an empty string when the sentence is empty' do
      sentence = ""
      expect(manipulator.reverse_words(sentence)).to eq("")
    end
  end

  describe '#capitalize_words' do
    it 'capitalizes the first letter of each word in a sentence' do
      sentence = "hello world"
      expect(manipulator.capitalize_words(sentence)).to eq("Hello World")
    end

    it 'capitalizes words in a sentence with punctuation' do
      sentence = "hello, world! how are you?"
      expect(manipulator.capitalize_words(sentence)).to eq("Hello, World! How Are You?")
    end

    it 'returns an empty string when the sentence is empty' do
      sentence = ""
      expect(manipulator.capitalize_words(sentence)).to eq("")
    end
  end
end