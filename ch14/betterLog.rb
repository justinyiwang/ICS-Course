$nest = 0

def log description, &block
  puts "  " * $nest + 'Beginning ' + description
  $nest = $nest + 1
  puts "  " * $nest + '...' + description + ' finished, returning: ' + block.call.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'even smaller block' do
      'TINY'
    end
    2+3
  end
   'I like Thai Food!'
end
