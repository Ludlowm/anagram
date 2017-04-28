class String
  def anagram?(input)
    vowel_word = self.downcase
    input_word = input.downcase
    letters_array = self.gsub(/[^a-zA-Z]/, '').downcase.split("")
    second_array = input.gsub(/[^a-zA-Z]/, '').downcase.split("")
    word1 = letters_array.sort
    word2 = second_array.sort
    empty_array = []
      if  vowel_word !~ /[aeiouy]/ || input_word !~ /[aeiouy]/
      "Please enter in an actual word"
      elsif ((letters_array) == (letters_array)) && ((letters_array) ==       (second_array.reverse))
        "These words are palindromes"
      elsif word1 == word2
        "These words are anagrams"
      elsif
      input.split('').each do |letter|
      empty_array.push(self.include?(letter))
      end
      if !(empty_array.include?(true))
        "This is an antigram"
      else
        "This is not an antigram/anagram or palindrome"
      end
    end
  end
end
