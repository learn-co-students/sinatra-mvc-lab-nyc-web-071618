require 'pry'
class PigLatinizer
  attr_reader :text

  @@vowels = ['a', 'e', 'i', 'o', 'u']

  def initialize

  end
  def pig_one_word(word)
    array = word.split(/([aeiou].*)/)
      if @@vowels.include?(word[0].downcase) == true
         return word + "way"
      else
        return array[1] + array[0] + "ay"
    end
  end

  def pig_sentence(setence)
    setence.split(" ").map{|sent| pig_one_word(sent)}.join(" ")
  end



  def piglatinize(word)
    if word.split == 1
      pig_one_word(word)
    else
      pig_sentence(word)
    end
  end


end
