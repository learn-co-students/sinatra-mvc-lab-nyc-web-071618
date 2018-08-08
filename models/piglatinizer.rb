class PigLatinizer
  
def piglatinize(str)
  str_list = str.split(" ")
  # spilts the string into indiv elements
  vowels = "aoiueAOIUE"
# we are assinging the vriable vowel to equal any vowel, upper or lower case
  str_list.map{|str|
    idx = 0
    while idx <str.size
      # while indx is less than the string size
      break if vowels.include?(str[idx])
      idx += 1
    end
     new_str = str[idx...str.size] + str[0...idx]

    if idx == 0
      new_str += "way"
    else
      new_str += "ay"
    end
  }.join(" ")
end
end
