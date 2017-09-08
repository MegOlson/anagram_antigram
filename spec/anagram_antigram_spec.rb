require('rspec')
require('anagram_antigram')

  describe('Anagram#anagram_check') do
    it("checks if word is a legitimate word") do
      anagram = Anagram.new("nqwrs", "dog")
      expect(anagram.word_check).to(eq("Please enter legitimate words!"))
    end
    it("checks if two words are anagrams") do
      anagram = Anagram.new("ruby", "bury")
      expect(anagram.anagram_check).to(eq("These words are anagrams"))
    end
    it("checks if two words are anagrams") do
      anagram = Anagram.new("hello", "hi")
      expect(anagram.anagram_check).to(eq("These words are not anagrams"))
    end
    it("checks if two words are anagrams despite case") do
      anagram = Anagram.new("Tea", "Eat")
      expect(anagram.anagram_check).to(eq("These words are anagrams"))
    end
    it("checks if anagrams are also palindromes") do
      anagram = Anagram.new("Nana", "Anna")
      expect(anagram.palindrome_check).to(eq("These words are anagrams and palindromes"))
    end
    it("checks if anagrams are also palindromes") do
      anagram = Anagram.new("nap", "pan")
      expect(anagram.palindrome_check).to(eq("These words are only anagrams"))
    end
    it("checks if non-anagrams are antigrams") do
      anagram = Anagram.new("hi", "bye")
      expect(anagram.antigram_check).to(eq("These words are antigrams"))
    end
    it("checks if non-anagrams are antigrams") do
      anagram = Anagram.new("below", "bye")
      expect(anagram.antigram_check).to(eq("These words are not antigrams"))
    end
  end
