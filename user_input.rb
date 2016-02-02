puts "Enter a number or string"
input = gets.chomp
counter = 1
number_array = []
word_array = []

while input
  if input.to_s.to_f != 0.0 && input != ""
    number_array << input.to_f
    number_total = number_array.reduce:+
    number_average = number_total / counter

    puts "Full array: #{number_array}"
    puts "Total: #{number_total}"
    puts "Count: #{counter}"
    puts "Average: #{number_average}"

    puts "Enter another number"
    input = gets.chomp
    input = input.to_f
    counter += 1


  elsif input.to_f.to_s == 0.0 && input != ""
    word_array << input
    puts "#{word_array}"
    total_words = word_array.join("")
    puts "#{total_words}"
    puts "Enter another string"
    input = gets.chomp
    counter += 1


  else
    puts "Start over"
    exit
  end
end
