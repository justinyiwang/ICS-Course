def log description, &block
  puts 'Beginning ' + description
  puts '...' + description + ' finished, returning: ' + block.call.to_s
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
