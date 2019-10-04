puts "Считаем кол-во дней до указанной даты"
print "Ведите число: "
date = gets.chomp.to_i
print "Введите месяц (1-12) "
month = gets.chomp.to_i
print "Введите год "
year = gets.chomp.to_i

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  days[1] = 29
end

print "порядковый номер даты: "

puts days.take(month - 1).sum + date
