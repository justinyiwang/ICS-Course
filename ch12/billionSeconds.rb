def getYear
  puts 'Input year of birth:'
  year = gets.chomp.to_i
  if !year.between?(1897,2015)
    puts 'Try again'
    year = getYear
  end
  year
end

def getMonth
  puts 'Input month of birth:'
  month = gets.chomp.to_i
  if !month.between?(1,12)
    puts 'Try again'
    month = getMonth
  end
  month
end

def getDay
  puts 'Input day of birth:'
  day = gets.chomp.to_i
  if !day.between?(1,31)
    puts 'Try again'
    day = getDay
  end
  day
end

def getHour
  puts 'Input hour of birth:'
  hour = gets.chomp.to_i
  if !hour.between?(0,23)
    puts 'Try again'
    hour = getHour
  end
  hour
end

def getMinute
  puts 'Input minute of birth:'
  minute = gets.chomp.to_i
  if !minute.between?(0,59)
    puts 'Try again'
    minute = getMinute
  end
  minute
end

def getSecond
  puts 'Input second of birth:'
  second = gets.chomp.to_i
  if !second.between?(0,59)
    puts 'Try again'
    second = getSecond
  end
  second
end

year = getYear
month = getMonth
day = getDay
hour = getHour
minute = getMinute
second = getSecond

dateOfBirth = Time.local(year, month, day, hour, minute, second)
puts 'You will be one billion seconds old at '
puts dateOfBirth + 1000000000
