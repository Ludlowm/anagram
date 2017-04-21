class String
  def anagram
    vowel_word = self.downcase
    split_word = self.downcase.split(" ").to_a
    split_letters = self.downcase.split("").to_a
    word1 = split_word[0]
    word2 = split_word[1]
      if vowel_word !~ /[aeiouy]/
        "Please enter in an actual word"
      elsif split_letters == split_letters.reverse
        "These words are a palindrome"
      elsif word1.chars.sort == word2.chars.sort
      "These words are an anagram"
      elsif word1.chars.sort != word2.chars.sort
        "This is an antigram"
      else
        "You don't have an anagram"
    end
  end
end
