class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    word_check   ##calls first method
  end

  def word_check
    ##Checks if input are legitimate words by looking for vowels##
    if @word1 =~ /[aeiouy]/i && @word2 =~ /[aeiouy]/i
      anagram_check
    else
      puts "Please enter legitimate words!"
      return "Please enter legitimate words!"
    end
  end

  def anagram_check
    ##Checks if user inputs are anagrams ##
    @word1 = @word1.downcase.gsub(/[^a-z]\s+/, "")
    @word2 = @word2.downcase.gsub(/[^a-z]\s+/, "")
    result = @word1.size == @word2.size && @word1.delete(@word2).empty?
    if result == true
      puts "Anagrams!"
      return "Anagrams!"
      palindrome_check
    else
      return "Not anagrams."
      antigram_check
    end
  end

  def palindrome_check
    ##Checks anagrams passed down from previous method to see if they're palindromes as well##
    @word1 = @word1.downcase.gsub(/[^a-z]\s+/, "")
    @word2 = @word2.downcase.gsub(/[^a-z]\s+/, "")
    if @word1 == @word1.reverse || @word2 == @word2.reverse
      puts "Anagrams and palindromes!"
      return "Anagrams and palindromes!"
    else
      puts "Only anagrams."
      return "Only anagrams."
    end
  end

  def antigram_check
    ##Checks non-anagrams to see if they're antigrams (no charing letters)##
    @word1 = @word1.downcase.gsub(/[^a-z]/, "")
    @word2 = @word2.downcase.gsub(/[^a-z]/, "")
    @word1 = @word1.split("")
    @word2 = @word2.split("")
    similars = @word1 & @word2
    if similars == []
      puts "Antigrams!"
      return "Antigrams!"
    else
      puts "Not antigrams."
      return "Not antigrams."
    end
  end
end

#### User Interface ######

puts "Please enter a word or phrase"
user_input1 = gets.chomp
puts "Please enter another word or phrase"
user_input2 = gets.chomp
Anagram.new(user_input1, user_input2)
