input = gets.chomp
while input != 'BYE'
  if input > input.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    puts 'NO, NOT SINCE '+rand(1930..1950).to_s+'!'
  end
  input = gets.chomp
end
