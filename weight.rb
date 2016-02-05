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
end


a = Weight.new(2, :lbs)
b = Weight.new(3, :lbs)

c = a + b

puts "TOTAL: #{c}"
puts "a: #{a}"
puts "b: #{b}"
