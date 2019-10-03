arr = [0, 1]
sum = 1
while sum < 89
  sum = arr[-1] + arr[-2]
  arr << sum
end

puts arr.inspect

