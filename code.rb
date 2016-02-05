require './person'

android = Phone.new("Motorola", "Driod Maxx", ["Macarena", "Chicken Dance"])
blake = Person.new("Blake", android)
blake.say_name
blake.recieve_call
