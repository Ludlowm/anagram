require('rspec')
require('anagram')

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
  it("returns if the word entered doesnt contain aeiouy") do
    expect("zzzzzzz".anagram()).to(eq("Please enter in an actual word"))
  end
  it("returns if the words entered have no letters in common") do
    expect("god baby".anagram()).to(eq("This is an antigram"))
  end
end
