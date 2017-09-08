require('rspec')
require('anagram_antigram')

  describe('Anagram#anagram_check') do
    it("check if two words are anagrams") do
      anagram = Anagram.new("ruby", "bury")
      expect(anagram.anagram_check).to(eq("These words are anagrams"))
    end
    it("check if two words are anagrams") do
      anagram = Anagram.new("hello", "hi")
      expect(anagram.anagram_check).to(eq("These words are not anagrams"))
    end
    it("check if two words are anagrams despite case") do
      anagram = Anagram.new("Tea", "Eat")
      expect(anagram.anagram_check).to(eq("These words are anagrams"))
    end
  end
