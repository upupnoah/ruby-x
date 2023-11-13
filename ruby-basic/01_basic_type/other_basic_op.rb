# frozen_string_literal: true

# 变量交换
a = 1
b = 2
b, a = a, b
p "#{a}, #{b}"

puts '-' * 30

x = [1, 2, 3]
a, b, c = x # 将数组中的值依次赋值
puts "#{a}, #{b}, #{c}"

puts '-' * 30
x = [1, 2, 3]
a, *b = x # 将数组中的第一个值赋值给 a，剩下的值赋值给 b， 适用于参数不定的情况
puts a
p b

# number
puts 1 / 10
puts 1 / 10.0

puts '-' * 30

# string
a = 'world'
# 适用于比较长的字符串 %Q{} or %()
b = %(#{a}!! The first time I read a line by John Ashbery
was in a little café in Massachusetts, from left to right
There it was written across my friend’s collarbone
It felt right to be there with someone
who would show me something like that
when we had never met before
)
puts b

puts '-' * 30
# 和场面的效果一样
a = <<~HERE
  hello world
  #{b}
HERE
puts a

puts '-' * 30

a = <<~TEXT # 前后的标识符要一致
  !!hello world
  #{b}
TEXT
puts a

# array
a = %w[a2 34 baaa c 1] # 都是字符串，如果中间包含空格，则不能使用 %w
p a
