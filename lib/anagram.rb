class String
  define_method(:anagram) do
    split_word = self.split(" ").to_a
    word1=split_word[0]
    word2 = split_word[1]
    if word1.chars.sort == word2.chars.sort
      puts "these words are anagrams"
    end
  end
end
