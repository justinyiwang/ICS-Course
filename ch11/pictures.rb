Dir.chdir 'C:\Users\Justin Wang\Pictures\Camera Roll'

pic_names = Dir['*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:   "

pic_number = 1

pic_names.each do |name|

  pic_names = Dir['*.jpg']

  new_name = if pic_number<10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if pic_names.include? new_name
    puts
    puts "A file of the same name will be overwritten. Proceed? Y/N"
    response = gets.chomp
    next if response == 'N'
  end

  File.rename name, new_name

  pic_number = pic_number + 1
end

puts
puts 'Done, cutie!'
