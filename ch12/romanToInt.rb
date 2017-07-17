def get_rnum
  puts 'Enter your roman numeral:'
  rnum = gets.chomp.upcase.to_s
  rnum.each_char do |letter|
    if not ['M', 'D', 'C', 'L', 'X', 'V', 'I'].include? letter
      puts
      puts 'This is not valid'
      rnum = get_rnum
      break
    end
  end
  rnum
end

def process rnum
  rnum = rnum.gsub('IV', 'IIII')
  rnum = rnum.gsub('IX', 'XIIII')
  rnum = rnum.gsub('XL','XXXX')
  rnum = rnum.gsub('XC','LXXXX')
  rnum = rnum.gsub('CD','CCCC')
  rnum = rnum.gsub('CM','DCCCC')
  sum = 0
  rnum.each_char do |letter|
    if letter == 'M'
      sum = sum + 1000
    end
    if letter == 'D'
      sum = sum + 500
    end
    if letter == 'C'
      sum = sum + 100
    end
    if letter == 'L'
      sum = sum + 50
    end
    if letter == 'X'
      sum = sum + 10
    end
    if letter == 'V'
      sum = sum + 5
    end
    if letter == 'I'
      sum = sum + 1
    end
  end
  puts sum
end

process get_rnum
