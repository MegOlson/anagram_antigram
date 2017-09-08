class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def word_check
    if @word1 =~ /[aeiouy]/i && @word2 =~ /[aeiouy]/i
      anagram_check
    else
      return "Please enter legitimate words!"
    end
  end

  def anagram_check
    @word1 = @word1.downcase
    @word2 = @word2.downcase
    result = @word1.size == @word2.size && @word1.delete(@word2).empty?
    if result == true
      return "These words are anagrams"
      palindrome_check
    else
      return "These words are not anagrams"
      antigram_check
    end
  end

  def palindrome_check
    @word1 = @word1.downcase
    @word2 = @word2.downcase
    if @word1 == @word1.reverse || @word2 == @word2.reverse
      return "These words are anagrams and palindromes"
    else
      return "These words are only anagrams"
    end
  end

  def antigram_check
    @word1 = @word1.split("")
    @word2 = @word2.split("")
    similars = @word1 & @word2
    if similars == []
      return "These words are antigrams"
    else
      return "These words are not antigrams"
    end
  end
end
