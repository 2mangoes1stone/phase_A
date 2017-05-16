def phase3(group)
  wilds = ['AH', 'AD', 'AC', 'AS']
  c_counter = 0
  wilds_counter = 0
  card_num = nil

  group.each do |x|
    if wilds.include?(x)
      wilds_counter += 1
    elsif card_num.nil?
      card_num = x[0]
      c_counter += 1
    elsif x[0] == card_num
      c_counter += 1
    end
  end

  if group.length == 4 && c_counter >= 2 && (c_counter + wilds_counter == 4)
   3
  else
   nil
  end
end

puts phase3(['4H', '4S', 'AC', '4C'])