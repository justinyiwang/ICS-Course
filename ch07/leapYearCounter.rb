puts 'Please input a starting year:'
starting = gets.chomp.to_i
puts 'Please input a end year:'
ending = gets.chomp.to_i
counter = starting
while counter <= ending
  if counter%4 == 0 && (counter%100!=0 || counter%400==0)
    puts ''
    puts counter.to_s
  end
  counter = counter + 1
end
