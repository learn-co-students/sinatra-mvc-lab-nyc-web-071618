a = "spray"
vowels = ['a','e','i','o','u']

letters = a.split("")


letters.each_with_index do |letter,index|
  if vowels.include?(letter)
    puts index
  end
end




puts letters.inspect
