require 'byebug'
require './currency.rb'
class CurrencyConverter
  def initialize(currency_hash)
    @currency_hash = currency_hash
  end

  def convert(current, desired_currency)
    if @currency_hash[desired_currency] == 1.0

      new_money = current.amount * @currency_hash[current.type]
      Currency.new(new_money, desired_currency)
    elsif @currency_hash[desired_currency] < 1.0
      new_money = (@currency_hash[current.type] * current.amount) * @currency_hash[desired_currency]
      Currency.new(new_money, desired_currency)
    elsif @currency_hash[desired_currency] > 1.0
      new_money = current.amount / (@currency_hash[desired_currency])
      Currency.new(new_money, desired_currency)
    end
  end
end

#code.rb
my_rates = { USD: 1.0, EUR: 0.89, BTS: 0.1}
a = CurrencyConverter.new(my_rates)

blakes_money = Currency.new("B2000")
# puts blakes_money.amount
# puts blakes_money.type
#
other_money = Currency.new(2000, "$")
# puts other_money.amount
# puts other_money.type

puts a.convert(blakes_money, :USD).amount
puts a.convert(blakes_money, :USD).type

puts a.convert(other_money, :EUR).amount
puts a.convert(other_money, :EUR).type
