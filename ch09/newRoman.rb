def old_roman_numeral number
  num_of_letter = []
  denomination = ['M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I']
  denomination_value = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
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
