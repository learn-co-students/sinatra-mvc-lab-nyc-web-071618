class PigLatinizer
  def initialize()
  end

  def piglatinize(str)
    str_list = str.split(" ")
    vowels = "aoiueAOIUE"
    str_list.map{|str|
      num = 0
      while num <str.size
        break if vowels.include?(str[num])
        num += 1
      end

      new_str = str[num...str.size] + str[0...num]
      if num == 0
        new_str += "way"
      else
        new_str += "ay"
      end
    }.join(" ")
    end


end
