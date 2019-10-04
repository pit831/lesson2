list = {} #Hash.new{|h,k| h[k] = Hash.new(0)}
loop do
  print "Введите назв. товара "
  product_name = gets.chomp
  break if product_name == "stop"
  print "Введите цену товара "
  price = gets.chomp.to_f
  print "Введите кол-во товара "
  quantity = gets.chomp.to_i
list[product_name] = {price: price, quantity: quantity}
end
puts list

sum = 0
list.each do |product, value|
  subtotal = list[product][:price] * list[product][:quantity]
  puts product + " " + subtotal.to_s
  sum += subtotal
end
puts sum


