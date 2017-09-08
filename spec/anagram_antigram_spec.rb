require('rspec')
require('anagram_antigram')

  describe('#anagram_check') do
    it("check if two words are anagrams") do
      expect(("ruby" "bury").anagram_check("ruby", "bury")).to(eq("These words are anagrams"))
    end
    it("check if two words are anagrams") do
      expect(("hello" "hi").anagram_check("hello", "hi")).to(eq("These words are not anagrams"))
    end
    # it("check if two words are anagrams despite case") do
    #   expect("Tea" "Eat").anagram_check("Tea", "Eat")).to.(eq("These words are anagrams"))
    # end
  end
