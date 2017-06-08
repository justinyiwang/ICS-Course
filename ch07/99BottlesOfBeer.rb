num_bottle = 99
while num_bottle != 0
  puts num_bottle.to_s+" bottles of beer on the wall, "+num_bottle.to_s+" bottles of beer. Take one down and pass it around,"+(num_bottle-1).to_s+" bottles of beer on the wall."
  num_bottle = num_bottle - 1
  if num_bottle == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
    break
  end
end
puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
