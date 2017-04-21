require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it("returns true if the two words entered are an anagram") do
    expect("ruby bury".anagram()).to(eq("These words are anagrams"))
  end
  it("returns true even if the two words entered have capitalization") do
    expect("Ruby Bury".anagram()).to(eq("These words are anagrams"))
  end
  it("returns true if the two words entered is an anagram and a palindrome") do
    expect("dog god".anagram()).to(eq("These words are palindromes"))
  end
end
