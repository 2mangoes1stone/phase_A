def phase5_2(group)
# a “run” of N cards of the same colour: a run of N cards where all cards are of the same colour,
# as defined by the suit (Spades and Clubs are black,and Hearts and Diamonds are red; e.g.['2S', '3C', '4C', '5S']
# is a run of 4 black cards)

set = {'A': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9, '0': 10, 'J': 11, 'Q': 12, 'K': 13 }
colors = {
  'H': 'r',
  'D': 'r',
  'C': 'b',
  'S': 'b'
}
card_counter = 0
deck_color = nil
sequence = nil
number_array = []
suit_array = []

  group.each do |card|
    if sequence.nil? && deck_color.nil?
      sequence = set[card[0].to_sym] + 1
      deck_color = colors[card[1].to_sym]
      card_counter += 1
      number_array << set[card[0].to_sym]
      suit_array << colors[card[1].to_sym]
    elsif set[card[0].to_sym] == sequence && deck_color == colors[card[1].to_sym]
      sequence += 1
      card_counter += 1
      number_array << set[card[0].to_sym]
      suit_array << colors[card[1].to_sym]
    else
      number_array << set[card[0].to_sym]
      suit_array << colors[card[1].to_sym]
    end
    puts sequence
    puts number_array.inspect
    puts suit_array.inspect
  end

  

  # number_array.sort.each_cons(2).all? { |x,y| y == x + 1 } && suit_array.uniq!.count == 1 ? 5_2 : nil
  if number_array.sort.each_cons(2).all? { |x,y| y == x + 1 } && suit_array.min == suit_array.max
    5.2
  else
    nil
  end
end

# puts phase5_2(['2S', '3C', '4C', '5S', '6C'])
puts phase5_2(['2S', '3C', '4C', '5S'])