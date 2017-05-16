def phase5_1(group)
# A run of four cards of the same colour, e.g. ['4H', '5D', 'AC', '7H']
# represents a run of four Red cards.
# Note that the set may include Wilds (as we see in our example,
# with the Ace of Clubs standing in for a Red Six),
# but must include at least two "natural" cards (i.e. non-Wild cards),
# which define the colour. Note also that the
# sequence of the cards is significant for this group type,
# and that ['4H', '5D', '7H', 'AC'] is not a valid run of
# four cards of the same colour, as it is not in sequence.

set = {'2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9, '0': 10, 'J': 11, 'Q': 12, 'K': 13 }
colors = {
  'H': 'r',
  'D': 'r',
  'C': 'b',
  'S': 'b'
}
wilds = ['AH', 'AD', 'AC', 'AS']
card_counter = 0
wilds_counter = 0
deck_color = nil
sequence = nil

  group.each do |card|
    if wilds.include?(card)
        wilds_counter += 1
        sequence += 1 unless sequence.nil? 
    elsif sequence.nil? && deck_color.nil?
        sequence = set[card[0].to_sym] + 1
        deck_color = colors[card[1].to_sym]
        card_counter += 1
    elsif set[card[0].to_sym] == sequence && deck_color == colors[card[1].to_sym]
      sequence += 1
      card_counter += 1
    end
  end

  if group.length == 4 && card_counter >= 2 && (card_counter + wilds_counter == 4)
    5
  else
    nil
  end


end

puts phase5(['4H', '5D', 'AC', '7H'])