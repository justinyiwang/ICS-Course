class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @orangeCount = 0
  end
  def oneYearPasses
    @age = @age + 1
    @height = @height + 2
    if age > 3
      @orangeCount = rand(1,10)
    end
    if age > 15
      puts "Your tree has died"
    end
  end
  def height
    if age == 0
      puts 'You just planted your tree!'
    else
      puts 'Your tree is ' + @height +' meters tall.'
    end
  end
  def age
    if age == 0
      puts 'You just planted your tree!'
    else
      puts 'Your tree is ' + @age + ' years old.'
    end
  end
  def orangeCount
    if age == 0
      puts 'You just planted your tree!'
    else
      puts 'Your tree has ' + @orangeCount + ' oranges this year.'
    end
  end
  def pickOrange
    if age == 0
      puts 'You just planted your tree!'
    elsif @orangeCount == 0
      puts 'There are no oranges to pick...'
    else
      @orangeCount = @orangeCount - 1
      puts 'That orange was tasty.'
    end
  end
end
