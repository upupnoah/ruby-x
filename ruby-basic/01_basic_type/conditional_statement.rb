# frozen_string_literal: true

# if/else/elsif
a = 'hello'
b = false

if a
  p a
elsif b
  p b
else
  p 'ok'
end

# unless 否则
u = false
# unless u
#   p 'ok'
# end

# 上面的代码等价于下面的
p 'ok' unless u
p 'ok' if u != true
# b = 1
a = 1 if a != 1
z = 3 unless defined?(z) # 除非定义了 z，否则定义z并赋值为 3
p z

# case
a = 'hello'
case a
when 1, 2, 5
  1
when /hello/
  p 'hello world'
when Array
  []
else
  'ok'
end

# while
a = 0
while a < 5
  p a
  a += 1
end

# Iterators
for x in [1, 2, 3]
  p x
end

[1, 2, 2].each do |x|
  p x
end
2.times { |t| p "#{t} hello" }
