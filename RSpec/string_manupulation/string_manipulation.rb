class StringManipulator
  def reverse_words(sentence)
    sentence.split.reverse.join(' ')
  end

  def capitalize_words(sentence)
    sentence.split.map(&:capitalize).join(' ')
  end
end