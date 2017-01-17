require 'pry'
#??aces(hard or soft), def convert_aces
# picking hard, soft, hard, def soft_hard_or_pair?

def valid_card(card)
  face_cards = ['A', 'K', 'Q', 'J']
  loop do
    begin
      face_cards.include?(card) || Integer(card)
      break
    rescue
      print 'Not valid. Enter card: '
      card = gets.chomp
    end
  end
  card
end

def convert_face_cards(card)
  values = ['K', 'Q', 'J']
  if values.include?(card)
    card = 10
  end
  card
end

def aces(card)
  aces = ['A']
  if aces.include?(card)
    card = 11
  end
  card
end

def optimal_move?(first_card, second_card, dealer_card)

end

def hard_move(hard, move)
  hard_move = hard[first_card][dealer_card]
  puts "You should #{hard_move}"
end

def soft_move(soft, move)
  soft_move = soft[cards_value][dealer_card]
  puts "You should #{soft_move}"
end

def pair_move(pair, move)
  pair_move = pair[cards_value][dealer_card]
  puts "You should #{pair_move}"
end


hard = {
  5 => {
    2 => 'H',
    3 => 'H',
    4 => 'H',
    5 => 'H',
    6 => 'H',
    7 => 'H',
    8 => 'H',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  },
  6 => {
    2 => 'H',
    3 => 'H',
    4 => 'H',
    5 => 'H',
    6 => 'H',
    7 => 'H',
    8 => 'H',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  },
  7 => {
    2 => 'H',
    3 => 'H',
    4 => 'H',
    5 => 'H',
    6 => 'H',
    7 => 'H',
    8 => 'H',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  },
  8 => {
    2 => 'H',
    3 => 'H',
    4 => 'H',
    5 => 'H',
    6 => 'H',
    7 => 'H',
    8 => 'H',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  }
}

soft = {
  13 => {
    2 => 'H',
    3 => 'H',
    4 => 'H',
    5 => 'Dh',
    6 => 'Dh',
    7 => 'Dh',
    8 => 'H',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  },
  14 => {
    2 => 'H',
    3 => 'H',
    4 => 'Dh',
    5 => 'Dh',
    6 => 'Dh',
    7 => 'H',
    8 => 'H',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  }
}

pair = {
  4 => {
    2 => 'P',
    3 => 'P',
    4 => 'P',
    5 => 'P',
    6 => 'P',
    7 => 'P',
    8 => 'H',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  },
  6 => {
    2 => 'P',
    3 => 'P',
    4 => 'P',
    5 => 'P',
    6 => 'P',
    7 => 'P',
    8 => 'P',
    9 => 'H',
    10 => 'H',
    'A' => 'H'
  }
}

first_card = 0
second_card = 0
dealer_card = 0
cards_value = 0
card = 0

print 'Give me your first card: '
first_card = gets.chomp
first_card = valid_card(first_card)
first_card = convert_face_cards(first_card)
first_card = aces(first_card)

print 'Give me your second card: '
second_card = gets.chomp
second_card = valid_card(second_card)
second_card = convert_face_cards(second_card)
second_card = aces(second_card)

cards_value = first_card.to_i + second_card.to_i

print 'Dealer card: '
dealer_card = gets.chomp
dealer_card = valid_card(dealer_card)
dealer_card = convert_face_cards(dealer_card)
dealer_card = aces(dealer_card)

print "first_card: #{first_card}\n"
print "second_card: #{second_card}\n"
print "dealer_card: #{dealer_card}\n"
print "cards_value: #{cards_value}\n"

# hard_move = hard[first_card][dealer_card]
# puts hard_move
#
# soft_move = soft[cards_value][dealer_card]
# puts soft_move
#
# pair_move = pair[cards_value][dealer_card]
# puts pair_move
