# frozen_string_literal: true

cards = %w(Jack Queen King Ace Joker)
cards.shuffle.each do |card|
  puts "#{card.upcase} - #{card.length} letters"
end

scores = { "Larry" => 10, "Moe" => 8, "Curly" => 12 }
scores.each do |name, score|
  puts "#{name} scored a #{score}!"
end