require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it("returns if the two words entered are an anagram") do
    expect("dog god".scrabble()).to(eq("these words are anagrams"))
  end
