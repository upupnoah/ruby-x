# frozen_string_literal: true

# 需要插值的时候使用双引号，不需要插值的时候使用单引号

a = 1
puts a
a = 3.14
puts a
puts a.class
a = 'Hello'
b = 'noah'
puts a

# 字符串插值
puts "#{a} #{b}" # puts a + " " + b # 这样不推荐

'hello'.length
'hello'.reverse
'hello'.upcase
puts 'hello'.gsub('lo', '!!!')
