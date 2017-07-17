def shuffle to_shuffle
  recursive_shuffle(to_shuffle, [])
end

def recursive_shuffle unshuffled, shuffled
  num = rand(unshuffled.length)
  shuffled.push(unshuffled[num])
  unshuffled.delete_at(num)
  recursive_shuffle(unshuffled, shuffled) unless unshuffled.size.zero?
  shuffled
end

def save filename, object
  File.open filename, 'w' do |f|
    f.write(object.join(' '))
  end
end

Dir.chdir 'F:\Users\Justin\Music\WTF IS THIS'
file_names = Dir['**/*.m4a']

contents = shuffle file_names
filename = 'new_playlist.m3u'
save filename, contents
