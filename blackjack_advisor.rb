require 'pry'
#???first card is an A.to_i??
# picking hard, soft, hard
# card to value conversion

# get player card values (both cards)
# calculate def hard_soft_or_pair(type)
# evaluate move

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
  # binding.pry
  first_card = valid_card(first_card)
  # binding.pry
  print 'Give me your second card: '
  second_card = gets.chomp
  second_card = valid_card(second_card)

  cards_value = first_card.to_i + second_card.to_i

  print 'Dealer card: '
  dealer_card = gets.chomp
  dealer_card = valid_card(dealer_card)

 print "first_card: #{first_card}\n"
 print "second_card: #{second_card}\n"
 print "dealer_card: #{dealer_card}\n"
 print "cards_value: #{cards_value}\n"

# binding.pry

# hard_move = hard[first_card][dealer_card]
# puts hard_move
#
# soft_move = soft[cards_value][dealer_card]
# puts soft_move
#
# pair_move = pair[cards_value][dealer_card]
# puts pair_move
