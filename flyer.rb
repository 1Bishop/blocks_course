# frozen_string_literal: true

class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
1.upto(5) do |i|
  flyers << Flyer.new("Flyer #{i}", "flyer#{i}@localhost", i * 1000)
end

total = 0
flyers.each do |flyer|
  total += flyer.miles_flown
end

puts total

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
promotions.each do |airline, multiplier|
  puts "Earn #{multiplier}x miles by flying #{airline}!"
end