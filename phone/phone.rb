class Phone
  def initialize(phone_make, phone_model, phone_ringtones)
    @make = phone_make
    @model = phone_model
    @ringtones = phone_ringtones
    puts "Setting up"
  end

  def ring
     @ringtones.each do |r|
       puts r
     end
  end

  def get_info
    return "#{@make} #{@model}"
  end

end

android = Phone.new("Motorola", "Driod Maxx", ["Macarena", "Chicken Dance"])
galaxy = Phone.new("Samsung", "Galaxy S6", "Motzart's 6th")
puts android.get_info
puts galaxy.get_info

android.ring
