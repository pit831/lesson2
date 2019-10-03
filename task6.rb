list = Hash.new{|h,k| h[k] = Hash.new(0)}
loop do
  print "Введите назв. товара "
  product_name = gets.chomp
  break if product_name == "stop"
  print "Введите цену товара "
  price = gets.chomp.to_f
  print "Введите кол-во товара "
  quantity = gets.chomp.to_i
list[product_name] = {price => quantity}
end
puts list

sum = 0
list.each do |key, value|
  subtotal = list[key].keys[0] * list[key].values[0]
  puts key + " " + subtotal.to_s
  sum += subtotal
end
puts sum


