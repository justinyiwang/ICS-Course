puts 'Enter any number of words to be sorted separated by a blank line; enter a blank line to end:'
input = gets.chomp
word_array = input.split(' ')
puts
puts word_array.sort
