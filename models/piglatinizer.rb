class PigLatinizer

  def piglatinize_word(word)
    @vowels = ['a', 'e', 'i', 'o', 'u']
    character_array = word.downcase.chars
    vowel_loci = 0
    first_vowel = ""

    vowels = []
    character_array.each do |character|
      @vowels.each do |vowel|
        if character == vowel
          vowels << vowel
        end
      end
    end

    first_vowel = vowels[0]
    vowel_loci = character_array.index(first_vowel)

    if word.length > 1 && vowel_loci != 0
      word[vowel_loci..(word.length - 1)] + word[0..(vowel_loci - 1)] + "ay"
    else
      word + "way"
    end
  end

  def piglatinize(sentence)
    if sentence.include?(" ")
      word_array = sentence.split(" ")
      piglatin_sentence = ""
      word_array.each do |word|
        piglatin_sentence += piglatinize_word(word) + " "
      end
      piglatin_sentence[0..(piglatin_sentence.length-2)]
    else
      piglatinize_word(sentence)
    end
  end
end
