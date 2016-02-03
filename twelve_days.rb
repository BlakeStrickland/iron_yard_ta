require 'byebug'

def verse(number, array)
  number = number.to_i - 1
  a = array[number]
  puts "#{a}"
end

def entire(array)
  array.each do |v|
    puts "#{v}"
  end
end

verse1 = "On the First day of Christmas
my true love sent to me:
a Partridge in a Pear Tree."

verse2 = "On the Second day of Christmas
my true love sent to me:
Two Turtle Doves
and a Partridge in a Pear Tree."

verse3 = "On the Third day of Christmas
my true love sent to me:
Three French Hens,
Two Turtle Doves
and a Partridge in a Pear Tree."

verse4 = "On the fourth day of Christmas
my true love sent to me:
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

verse5 = "On the fifth day of Christmas
my true love sent to me:
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Trees"

verse6 = "On the sixth day of Christmas
my true love sent to me:
Six Geese a Laying
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

verse7 = "On the seventh day of Christmas
my true love sent to me:
Seven Swans a Swimming
Six Geese a Laying
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

verse8 = "On the eighth day of Christmas
my true love sent to me:
Eight Maids a Milking
Seven Swans a Swimming
Six Geese a Laying
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

verse9 = "On the ninth day of Christmas
my true love sent to me:
Nine Ladies Dancing
Eight Maids a Milking
Seven Swans a Swimming
Six Geese a Laying
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

verse10 = "On the tenth day of Christmas
my true love sent to me:
Ten Lords a Leaping
Nine Ladies Dancing
Eight Maids a Milking
Seven Swans a Swimming
Six Geese a Laying
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

verse11 = "On the eleventh day of Christmas
my true love sent to me:
Eleven Pipers Piping
Ten Lords a Leaping
Nine Ladies Dancing
Eight Maids a Milking
Seven Swans a Swimming
Six Geese a Laying
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

verse12 = "On the twelfth day of Christmas
my true love sent to me:
12 Drummers Drumming
Eleven Pipers Piping
Ten Lords a Leaping
Nine Ladies Dancing
Eight Maids a Milking
Seven Swans a Swimming
Six Geese a Laying
Five Golden Rings
Four Calling Birds
Three French Hens
Two Turtle Doves
and a Partridge in a Pear Tree"

array = [verse1, verse2, verse3, verse4, verse5, verse6, verse7, verse8, verse9, verse10, verse11, verse12]

puts "Merry Christmas"
puts "Would you like to hear a verse or the entire song? (Type verse or entire)"
user_input = "verse"

if user_input == ""
  puts "You didn't answer the question. Good bye"
elsif user_input == "entire"
  entire(array)
elsif user_input == "verse"
  puts "Which verse would you like?"
  which_verse = gets.chomp
  verse(which_verse, array)
end
