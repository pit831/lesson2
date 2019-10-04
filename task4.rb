hash = {}
vowels = %w[a e i o u]
letters = ("a".."z").to_a
letters.each.with_index(1) do |letter, key|
  hash[letter] = key if vowels.include?(letter)
end

puts hash
