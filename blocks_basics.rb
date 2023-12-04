# frozen_string_literal: true

1.upto(5) do |i|
  puts "#{i}. situp"
  puts "#{i}. pushup"
  puts "#{i}. chinup"
end

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

puts flyers