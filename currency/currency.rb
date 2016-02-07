require 'byebug'
class Currency
  attr_accessor :amount, :type
  def initialize(string_money, extra_sign = nil)
    currency_hash = {USD: "$",BTS: "B",EUR: "£",JPY: "¥",
                    "$"=>:USD,"B"=>:BTS,"£"=>:EUR,"¥"=>:JPY
                    }
    if extra_sign == nil
      @type = currency_hash[string_money[0]]
      @amount = string_money[1..-1].to_f
    else
      @amount = string_money.to_f
      @type = currency_hash[extra_sign]
    end
  end

  def type
    @type
  end

 def +(other)
  if @type == other.type
    @amount + other.amount.to_f
  else
    puts "Different currency types. Try again."
  end
 end

 def -(other)
  if @type == other.type
    @amount - other.amount.to_f
  else
    puts "Different currency types. Try again."
  end
 end

 def *(other)
   byebug
  if @type == other.type
    @amount * other.amount.to_f
  else
    puts "Different currency types. Try again."
  end
 end

 def /(other)
  if @type == other.type
    @amount / other.amount.to_f
  else
    puts "Different currency types. Try again."
  end
 end
end
