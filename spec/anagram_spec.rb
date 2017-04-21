require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it("returns if the two words entered are an anagram") do
    expect("ruby bury".anagram()).to(eq("These words are anagrams"))
  end
  it("returns even if the two words entered have capitalization") do
    expect("Ruby Bury".anagram()).to(eq("These words are anagrams"))
  end
  it("returns if the two words entered are an anagram and a palindrome") do
    expect("dog god".anagram()).to(eq("These words are palindromes"))
  end
  it("returns if the word entered is an actual sentence") do
    expect("zzzzzzz".anagram()).to(eq("Please enter in an actual word"))
  end
end
