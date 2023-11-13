# frozen_string_literal: true

# while
a = 10
while a > 0 # 只要 a > 0 就一直执行
  puts a
  a -= 1
end

puts '-' * 30

a = 10
until a == 0 # 直到 a == 0 时才停止
  puts a
  a -= 1
end

puts '-' * 30

# loop 无限循环
a = 5
loop do
  break if a <= 0

  puts a
  a -= 1
end

# puts '-' * 30

# 循环控制
# break
# next
# for x in 1..5
#   break if x == 2

#   puts x
# end

puts '-' * 30

# each
(1..5).each do |x|
  break if x == 4

  puts x
end

puts '-' * 30

# next 跳过当前循环, 相当于其他语言的 continue
(1..5).each do |x|
  next if x == 3

  puts x
end
