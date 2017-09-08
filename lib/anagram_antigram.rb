# class Anagram
  public def anagram_check(word1, word2)
    word1.size == word2.size && word1.delete(word2).empty?

    if true
      return "These words are anagrams"
    else
      return "These words are not anagrams"
    end

  #   word1.each_index do |i|
  #    if word1[i] == word1[word1.length - i -1]
  #      return "palindrome"
  #    else return "not a palindrome"
  #  end

  end
# end
