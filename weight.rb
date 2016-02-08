class CurrencyConverter
  def initialize()
    #dont do this
    @hash = {:USD => 1.00, :YIN => 120, :EUR => 0.9}
    #pass it in as a parameter to the initialize
  end
end


class Weight
  def initialize(amount, unit)
    @amount = amount
    @unit = unit
  end

  def to_s
    "#{@amount} #{@unit}"
  end

  def +(other)
    Weight.new(@amount + other.amount, @unit)
  end

  def amount
    @amount
  end

  def *(factor)

  end
end


a = Weight.new(2, :lbs)
b = Weight.new(3, :lbs)

c = a + b
d = a * 2
e = a * 2.0

puts "TOTAL: #{c}"
puts "a: #{a}"
puts "b: #{b}"
