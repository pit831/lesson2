hash = Hash.new(0)
vowels = ["a", "e", "i", "o", "u"]
letters = ("a".."z").to_a
letters.each_with_index do |letter, key|
  hash[letter] = key + 1 if vowels.detect{|i| i == letter} != nil
end

puts hash
