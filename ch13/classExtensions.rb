class Array
  def shuffle
    recursive_shuffle(self, [])
  end

  def recursive_shuffle unshuffled, shuffled
    num = rand(unshuffled.length)
    shuffled.push(unshuffled[num])
    unshuffled.delete_at(num)
    recursive_shuffle(unshuffled, shuffled) unless unshuffled.size.zero?
    shuffled
  end
end

class Integer
  def factorial
    if self == 0
      1
    else
      sum = self * (self - 1).factorial
    end
  end
  def toRoman
    if !self.between?(1,3000)
      puts 'Not valid'
    else
      number = self
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
  end
end

puts 26.toRoman
