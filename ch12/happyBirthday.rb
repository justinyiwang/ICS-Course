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

year = getYear
month = getMonth
day = getDay

currentTime = Time.new
birthDate = Time.local(year, month, day)
birthdays = (currentTime-birthDate)/31557600
birthdays.truncate.times do
  puts 'spank'
end
