def phase4(group)
# A run of eight cards, e.g. ['4H', '5S', 'AC', '7C', '8H', 'AH', '0S', 'JC']
# represents a run of eight cards.
# Note that the set may include Wilds (as we see in our example,
# with the Ace of Clubs standing in for a Six
# and the Ace of Hearts standing in for a Nine),
# but must include at least two "natural" cards
# (i.e. non-Wild cards). Note also that the sequence of the cards is
# significant for this group type,
# and that ['4H', '5S', 'AC', '8H', '7C', 'AH', '0S', 'JC'],
# e.g., is not a valid run of eight, as it is not in sequence.

set = {'2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9, '0': 10, 'J': 11, 'Q': 12, 'K': 13 }
wilds = ['AH', 'AD', 'AC', 'AS']
card_counter = 0
wilds_counter = 0
sequence = nil

  group.each do |card|
  
    if wilds.include?(card)
        wilds_counter += 1
        sequence += 1 unless sequence.nil?
    elsif sequence.nil?
      sequence = set[card[0].to_sym] + 1
      card_counter += 1
    elsif set[card[0].to_sym] == sequence
      sequence += 1
      card_counter += 1
    end
    #  puts sequence
    #  puts card_counter
    #  puts wilds_counter
  end

  if group.length == 8 && card_counter >= 2 && (card_counter + wilds_counter == 8)
    4
  else
    nil
  end
end

# puts phase4(['4H', '5S', 'AC', '7C', '8H', 'AH', '0S', 'JC'])