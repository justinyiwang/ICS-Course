def shuffle to_shuffle
  recursive_shuffle(to_shuffle, [])
end

def recursive_shuffle unshuffled, shuffled
  num = rand(unshuffled.length)
  shuffled.push(unshuffled[num])
  unshuffled.delete_at(num)
  recursive_shuffle(unshuffled, shuffled) unless unshuffled.size.zero?
  shuffled
end

puts 'Enter any amount of inputs of a single type to be shuffled, separated by a space; enter a blank line to end:'
input = gets.chomp
inputs = input.split(' ')

puts
puts shuffle(inputs)
