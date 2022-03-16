require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count_array = self.split(Regexp.union(['.', '?', '!']))
    puts count_array
    puts count_array.include?('')
    count_array.filter {|element| element != ''}.length
  end
end