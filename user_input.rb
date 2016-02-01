puts "Enter a number"
number = gets.chomp
counter = 1
number_array = []
while number != "\n" && number.to_s.to_f != 0.0

  number_array << number.to_f
  number_total = number_array.reduce:+
  number_average = number_total / counter

  puts "#{number_array}"
  puts "#{number_total}"
  puts "#{number_average}"

  puts "Enter another number"
  number = gets.chomp
  number = number.to_f

  counter += 1
end
