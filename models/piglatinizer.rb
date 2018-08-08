class PigLatinizer
  def initialize()
  end

  def piglatinize(str)
    str_list = str.split(" ")
    vowels = "aoiueAOIUE"
    str_list.map{|str|
      idx = 0
      while idx <str.size
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
