 def clock &block
   num = Time.new.hour
   if num > 12
     num = num%12
   end
   if num == 0
     num = 12
   end
   while num != 0
     block.call
     num = num - 1
   end
 end

 clock do
   puts 'dong'
 end
