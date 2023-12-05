class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

flyers.select { |f| f.miles_flown >= 3000 }.each do |f|
  puts "#{f.name} - #{f.status}"
end

puts "---------------------"

flyers.reject { |f| f.miles_flown >= 3000 }.each do |f|
  puts "#{f.name} - #{f.status}"
end

puts "---------------------"

puts flyers.any? { |f| f.status == :platinum }

puts "---------------------"

puts flyers.detect { |f| f.status == :bronze }

puts "---------------------"

plat_flyers, other_flyers = flyers.partition { |f| f.status == :platinum }
puts "Platinum Flyers:"
puts plat_flyers
puts "Other Flyers:"
puts other_flyers

flyers_by_km = flyers.map { |f| f.miles_flown * 1.6 }
puts "Kilometers Flown:"
puts flyers_by_km

puts "---------------------"

total = flyers.map { |f| f.miles_flown * 1.6 }.reduce(0, :+)
puts "Total kilometers flown: #{total}"
