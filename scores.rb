scores = [83, 71, 92, 64, 98, 87, 75, 69]

high_scores = scores.select { |score| score > 80 }
low_scores = scores.reject { |score| score > 80 }

puts "High scores: #{high_scores}"
puts "Low scores: #{low_scores}"

is_failing = scores.any? { |score| score < 70 }
puts "Are there any failing scores? #{is_failing}"
failing = scores.detect { |score| score < 70 }
puts "Which one is failing? #{failing}"

scores_doubled = scores.map { |score| score * 2 }
puts "Doubled scores: #{scores_doubled}"

total = scores.reduce(0) { |sum, score| sum + score }
puts "Total scores: #{total}"
evens, odds = scores.partition { |score| score.even? }
puts "Evens: #{evens}"
puts "Odds: #{odds}"
