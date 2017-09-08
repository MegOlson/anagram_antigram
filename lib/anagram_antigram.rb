class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def anagram_check
    @word1 = @word1.downcase
    @word2 = @word2.downcase
    result = @word1.size == @word2.size && @word1.delete(@word2).empty?
    if result == true
      return "These words are anagrams"
    else
      return "These words are not anagrams"
    end
  end

  # public def palindrome_check
  #   word1.each_index do |i|
  #    if word1[i] == word1[word1.length - i -1]
  #      return "palindrome"
  #    else return "not a palindrome"
  #  end
  # end
end
