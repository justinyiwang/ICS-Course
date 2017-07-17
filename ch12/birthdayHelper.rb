Dir.chdir 'C:\Users\Justin Wang\Documents\ICS programs\ICS-Course\ch12'
birthdays = {}
filename = 'birthdayHelperDates.txt'
f = File.open(filename, 'r')
f.each_line do |line|
  splitline = line.split(',', 2)
  birthdays[splitline[0]] = splitline[1]
end

print 'Enter name to look up:'
name = gets.chomp.to_s
if birthdays[name] == nil
   puts 'There is no birthday recorded for that user'
else
  puts name + ' : ' + birthdays[name]
end
