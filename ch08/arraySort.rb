puts 'Enter any number of words to be sorted; enter a blank line to end:'
input = gets.chomp
word_array = []
while input != ''
  word_array.push input
  input = gets.chomp
end
puts word_array.sort
