require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it("returns true if the two words entered are an anagram") do
    expect("dog god".anagram()).to(eq("these words are anagrams"))
  end
  it("returns true even if the two words entered have capitalization") do
    expect("Dog God".anagram()).to(eq("these words are anagrams"))
  end
end
