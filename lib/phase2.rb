def phase_two(group)
  wilds = ['AH', 'AD', 'AC', 'AS']
  c_counter = 0
  wilds_counter = 0
  card_num = nil

  group.each do |x|
    if wilds.include?(x)
      wilds_counter += 1
    elsif card_num.nil?
      card_num = x[1]
      c_counter += 1
    elsif x[1] == card_num
      c_counter += 1
    end
  end

  if group.length == 7 && c_counter >= 2 && (c_counter + wilds_counter == 7)
   
   2
  else
   
   nil
  end
end

# phase_two(['2C', '2C', '4C', 'KC', '9C', 'AH', 'JC']) # given array => 1
# phase_two(['AH', '2C', '4C', 'KC', '9C', 'AH', 'JC']) # 2wilds and 5 clubs => 1
# phase_two(['AC', 'AC', 'AC', 'AC', '9C', 'AH', 'JC']) # wilds and clubs combination => 1
# phase_two(['AH', 'AD', 'AD', 'AS', 'AS', 'AH', 'JC']) # 6 wilds && 1 club => nil
# phase_two(['AC', 'AC', 'AC', 'AC', '9C', 'AH']) # 6 hands => nil
# phase_two(['AC', 'AC', 'AC', 'AC', '9C', 'AH', 'JC', 'AH']) # 8 hands => nil
# phase_two(['AH', 'AD', '3C', 'AS', 'AS', 'KC', 'JC']) # 4 wilds and 3 clubs => 1
# phase_two(['AH', 'AD', '', 'AS', 'AS', 'KC', 'JC']) # empty string validation => nil
# phase_two(['AH', 'AD', 'C', 'AS', 'AS', 'KC', 'JC']) # validate club has a number => nil
# phase_two(['AH', 'AD', '3C', 'A', 'AS', 'KC', 'JC']) # validate wild without suit => nil
# phase_two(['2H', '2H', '4H', 'KH', '9H', 'AD', 'JH'])
puts phase_two(['2C', '2C', '4C', 'KC', '9C', 'AH', 'JC'])

