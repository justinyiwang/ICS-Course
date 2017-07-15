def sort to_sort
  recursive_sort to_sort, []
end

def recursive_sort unsorted, sorted
  sorted.push(unsorted[(unsorted.map(&:downcase).index(unsorted.map(&:downcase).min))])
  unsorted.delete_at(unsorted.map(&:downcase).index(unsorted.map(&:downcase).min))
  recursive_sort(unsorted, sorted) unless unsorted.size.zero?
  sorted
end

puts 'Enter any number of words to be sorted separated by a blank line; enter a blank line to end:'
input = gets.chomp
word_array = input.split(' ')

puts sort(word_array)
