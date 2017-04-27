class String
  def anagram?(input)
    vowel_word = self.downcase
    letters_array = self.gsub(/[^a-zA-Z]/, '').downcase.split("")
    second_array = input.gsub(/[^a-zA-Z]/, '').downcase.split("")
    word1 = letters_array.sort
    word2 = second_array.sort
    empty_array = []
      if vowel_word !~ /[aeiouy]/
        "Please enter in an actual word"
      elsif ((letters_array) == (letters_array)) && ((letters_array) == (second_array.reverse))
        "These words are palindromes"
      elsif word1 == word2
        "These words are anagrams"
      elsif
        input.split('').each do |letter|
          empty_array.push(self.include?(letter))

      end
      !(empty_array.include?(true))
        "This is an antigram"
    end
  end
end
