def old_roman_numeral number
  num_of_letter = []
  denomination = ['M','D','C','L','X','V','I']
  denomination_value = [1000, 500, 100, 50, 10, 5, 1]
  counter = 0
  output = []

  denomination_value.each do |denom|
    num_of_letter.push number/denom
    number = number%denom
  end

  denomination.each do |denom|
    output.push denom*num_of_letter[counter]
    counter = counter+1
  end

  puts output.join('')

end

old_roman_numeral 444
