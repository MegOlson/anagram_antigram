require('rspec')
require('anagram_antigram')

  describe('#anagram_check') do
    it("check if two words are anagrams") do
      expect(("ruby" "bury").anagram_check("ruby", "bury")).to(eq("These words are anagrams"))
    end
  end
