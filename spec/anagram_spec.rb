require('rspec')
require('anagram')

describe('String#anagram') do
  it("returns if the word entered doesnt contain aeiouy") do
    expect("zzz".anagram?("zzzz")).to(eq("Please enter in an actual word"))
  end
  it("returns if the two words entered are an anagram") do
    expect("ruby".anagram?("bury")).to(eq("These words are anagrams"))
  end
  it("returns even if the two words entered have capitalization") do
    expect("ruby".anagram?("bURY")).to(eq("These words are anagrams"))
  end
  it("returns if the two words entered are an anagram and a palindrome") do
    expect("dog".anagram?("god")).to(eq("These words are palindromes"))
  end
  it("returns if the words entered have no letters in common") do
    expect("god".anagram?("baby")).to(eq("This is an antigram"))
  end
  it("returns if the words have random characters added") do
    expect("god".anagram?("!!baby")).to(eq("This is an antigram"))
  end
end
