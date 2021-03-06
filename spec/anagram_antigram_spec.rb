require('rspec')
require('anagram_antigram')

  describe('Anagram#anagram_check') do
    it("checks if word is a legitimate word") do
      anagram = Anagram.new("nqwrs", "dog")
      expect(anagram.word_check).to(eq("Please enter legitimate words!"))
    end
    it("checks if two words are anagrams") do
      anagram = Anagram.new("ruby", "bury")
      expect(anagram.anagram_check).to(eq("Anagrams!"))
    end
    it("checks if two words are anagrams") do
      anagram = Anagram.new("hello", "hi")
      expect(anagram.anagram_check).to(eq("Not anagrams."))
    end
    it("checks if two words are anagrams despite case") do
      anagram = Anagram.new("Tea", "Eat")
      expect(anagram.anagram_check).to(eq("Anagrams!"))
    end
    it("checks if anagrams are also palindromes") do
      anagram = Anagram.new("Nana", "Anna")
      expect(anagram.palindrome_check).to(eq("Anagrams and palindromes!"))
    end
    it("checks if anagrams are also palindromes") do
      anagram = Anagram.new("nap", "pan")
      expect(anagram.palindrome_check).to(eq("Only anagrams."))
    end
    it("checks if non-anagrams are antigrams") do
      anagram = Anagram.new("hi", "bye")
      expect(anagram.antigram_check).to(eq("Antigrams!"))
    end
    it("checks if non-anagrams are antigrams") do
      anagram = Anagram.new("below", "bye")
      expect(anagram.antigram_check).to(eq("Not antigrams."))
    end
    it("checks if two phrases are anagrams") do
      anagram = Anagram.new("car has", "a crash")
      expect(anagram.anagram_check).to(eq("Anagrams!"))
    end
    it("checks if two non-anagram phrases are antigrams") do
      anagram = Anagram.new("I saw", "You there")
      expect(anagram.antigram_check).to(eq("Antigrams!"))
    end
  end
