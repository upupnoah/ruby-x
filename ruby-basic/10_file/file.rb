# frozen_string_literal: true

# File Read
# file = File.open('run.log', 'r')

# while line = file.gets
#   puts line
# end

File.foreach('run.log') do |line|
  puts line
end

# File Write
# File.open() 会将返回的文件对象赋值给 file
File.open('output.log', 'w') do |file|
  file.puts '这是一行文本。'
end

# File.read
# File.readlines 会将文件的每一行读取到数组中
# File#rewind etc.
# IO.read/write
