def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  random_face = faces.sample
  random_suit = suits.sample
  score = yield random_face, random_suit if block_given?
  if score
    puts "Deal"
     puts "You scored a #{score}!"
  else
    puts "No deal"
  end

end


deal do |face, suit|
  face.length + suit.length
end

deal