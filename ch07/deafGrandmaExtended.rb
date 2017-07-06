input = gets.chomp
counter = 1
while counter < 3
  if input > input.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
    counter = 1
  elsif input == 'BYE'
    puts 'HUH?! SPEAK UP, SONNY!'
    counter = counter + 1
  else
    puts 'NO, NOT SINCE '+rand(1930..1950).to_s+'!'
    counter = 1
  end
  input = gets.chomp
end
