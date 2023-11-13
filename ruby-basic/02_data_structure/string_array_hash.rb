# frozen_string_literal: true

# 上面这个魔法注释，可以让字符串不可变，如果修改会报错

# string
a = 'Hello world'
a.empty? # => false

# a[0] = 'a' # => "aello world"

# a.freeze # 不允许修改这个字符串，冻结（但是这里我们已经添加魔法注释了，因此会报错）
# a[0] = 'h' # => will raise error

# a = 'hello!!!!' # 重新赋值也会报错
p a

puts '-' * 30

# string 常用操作
# reverse
# sub
# gsub
# start_with?
# end_with?
# include?
h = 'hello world'
p h.reverse
p h
# p h.reverse! # 由于魔法注释的关系，字符串不可变，因此这里会报错
# p h
p h.sub('o', '!') # 替换第一个匹配到的
p h.gsub('o', '!') # 替换所有匹配到的

p a.start_with?('h') # => true
p a.end_with?('d') # => true

b = a.split(' ') # => ["Hello", "world"] 以空格为分隔符，分割字符串
p b
c = b.join(' ') # => "Hello world" 以空格为连接符，连接字符串
p c

# 将字符串类型赋值给另一个，实际上是赋值了引用，修改这个引用，会影响到原来的字符串
# 但是这里冻结了，因此修改会报错
# g = h
# g[0] = 'T'
# p h
# p g

# dup 会复制一个新的字符串，修改这个字符串，不会影响到原来的字符串
# dup 不会获得原字符串的属性（例如冻结（当然这个因为魔法注释，都是冻结的）， 污染状态和特殊属性）
# clone 就原原本本
_a = h.dup

puts '-' * 30

# array
a = %w[pear cat horse]
puts a.join(' ')
# a.clear # 清空数组

a.find { |x| x == 'horse' } # => 'horse' 没找到是 nil，找到则返回

# a.map { |x| x.upcase } # => ["PEAR", "CAT", "HORSE"]}
p a.map(&:upcase) # => ["PEAR", "CAT", "HORSE"]}

a.uniq
a.flatten
a.sort
a.count

a.delete_if { |x| x == 'horse' }

puts '-' * 30

# hash

a = { name: 'noah', age: 18 }
a.each { |key, value| puts "#{key} => #{value}" }
a.keys
a.values
a.key?(:name) # => true
a.delete(:name)
a.delete_if { |_, value| value == 18 }

puts '-' * 30

# send method
def hello
  puts 'hello world!!!'
end

# 只可以执行 方法名是一个变量的方法
# :方法名 或者 传入值是这个方法名的字符串变量
send(:hello) # 这个会调用 hello 方法
a = 'hello'
send(a) # 直接传入 a 这个字符串也能调用 hello 方法

puts '-' * 30

# respond_to? 判断是否有这个方法
a = 'hello world'
puts a.respond_to?(:length) # 判断 a 这个字符串是否有 length 这个方法
