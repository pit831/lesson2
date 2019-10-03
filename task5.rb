puts "Считаем кол-во дней до указанной даты"
print "Ведите число: "
date = gets.chomp.to_i
print "Введите месяц (1-12) "
month = gets.chomp.to_i
print "Введите год "
year = gets.chomp.to_i

days = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 =>31}

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  days[2] = 29
end

days_sum = 0 #сумма дней до указанного месяца
days.each {|key, value| days_sum += value if key < month}
days_sum += date

puts "#{days_sum} порядковый номер даты"
