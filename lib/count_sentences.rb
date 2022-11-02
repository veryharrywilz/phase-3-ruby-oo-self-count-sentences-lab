require 'pry'

class String

  attr_accessor :string

  def initialize(inputString)
    self.string=inputString
  end


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
    sentenceArray = self.delete(",").split(/\.|\?|!/).filter{ |sentence| !sentence.empty? }
    sentenceArray.count()
  end
end

# binding.pry