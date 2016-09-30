module FunWithStrings
  def palindrome?
    self.gsub(/\W/, "").downcase == self.gsub(/\W/, "").downcase.reverse
  end
  
  def count_words
    words = self.downcase.gsub(/\W/, " ").split(" ")
    frequencies = Hash.new(0)
    words.each { |word| frequencies[word] += 1 }
    return frequencies
  end
  
  def anagram_groups
    self.split(" ").group_by { |x| x.downcase.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
