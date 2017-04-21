class String
  define_method(:anagram) do
    split_word = self.downcase.split(" ").to_a
    split_letters = self.downcase.split("").to_a
    word1 = split_word[0]
    word2 = split_word[1]
    if split_letters == split_letters.reverse
      "These words are palindromes"
    elsif word1.chars.sort == word2.chars.sort
      "These words are anagrams"
    else
      "You don't have an anagram"
    end
  end
end
