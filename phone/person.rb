require './phone'

class Person
  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def say_name
    puts @name
  end

  def recieve_call
    @phone.ring
  end

end

# android = Phone.new("Motorola", "Driod Maxx", ["Macarena", "Chicken Dance"])
# blake = Person.new("Blake", android)
# blake.say_name
# blake.recieve_call
