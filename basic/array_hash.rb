# frozen_string_literal: true

a = [1, 2, 'hello']
puts a.length
puts a.size
puts a.first
puts a.last

b = ['world']
_c = a + b # [1, 2, "hello", "world"]
# b * 3 # ["world", "world", "world"]
# c - a # ["world"]

# 数组的其他方法：
# push/pop
# unshift：将一个或多个元素添加到数组的开头，并返回该数组。这个方法会修改原始数组
# shift：方法用于移除数组的第一个元素并返回它。如果数组为空，则返回 nil。这个方法也会修改原始数组

# 数组常用方法：（都可以看做方法）
# << 追加： a << 3
# concat
# index
# a[0] = 1 赋值
# max/min

# Ruby 中的方法
# + - = 实际上是方法：例如 a + 2, 实际上是 调用了+这个方法，参数是2
# 在 ruby 中，调用方法也可以不加括号， 看个人的编程习惯和约束
newarray = [1, 2, 3]
newarray.push(4)
newarray.push 5

# hash 的常用方法
# keys
# values
# delete

# symbol
# symbol 是 String 的补充，可以当做 String 来使用，但是有区别
# 在 Ruby 中，Symbol 经常被用来作为 hash 的 key 和 一些不频繁的字符串来使用
# 重复赋同样的值，object 的地址是不变的
# a = :hello
a = :"hello Symbol"
puts a
hash = { "a": 9999, "b": 2 }
puts hash[:a]

# Range
a = 1..10 # => 1..10
a.to_a.size # 10

b = 1...10 # => 1...10
b.to_a.size # 9

c = :a..:z
_alphabet = ('a'..'z').to_a
# => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

_d = a.to_a + c.to_a

# Regular Expression
a = /hello/
# 没有匹配到则返回 nil
puts 'hello world' =~ a # 判断字符串是否匹配到正则表达式， 返回匹配到的【开始的位置
email_re = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
puts email_re.match('111@gmail.com') # 匹配到的话是结果， 否则是 0
