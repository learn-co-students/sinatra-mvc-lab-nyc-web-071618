class PigLatinizer

  attr_reader :words

  def initialize
  end

  def first_vowel_index(word)
    letters = word.split("")
    vowel_indices = []
    vowels = ['a','e','i','o','u']

    letters.each_with_index do |letter,index|
      if vowels.include?(letter)
        vowel_indices << index
      end
    end
    vowel_indices.first
  end


  def piglatinize_word(word)
    first_vowel_index = first_vowel_index(word)
    if word.downcase.start_with?('a','e','i','o','u')
      return word+'way'
    else
      last_letter_index = word.size-1
      new_start = word.slice!(first_vowel_index..last_letter_index)
      new_start + word + "ay"
    end
  end

  def piglatinize(sentence)
    words = sentence.split(" ")
    piglatinized_words = words.map {|word| piglatinize_word(word)}
    piglatinized_words.join(" ")
  end

end # end of PigLatinizer class
