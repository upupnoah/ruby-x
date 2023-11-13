# frozen_string_literal: true

File.open('access.log', 'w+') do |f|
  f.puts 'line 1'
end

# 和上面的代码等价
File.open('access.log', 'w+') { |f| f.puts 'line 2' }

# Block 内置方法
[1, 2, 3].each do |i|
  p i
end

{ a: 1, b: 2 }.each do |k, v|
  p "#{k} #{v}"
end

# Block 变量作用域
x = 10
[1, 2, 3].each do |x|
  p x
end
p x # 在 2.0 之前，x 会变为 3

# 自定义 Block
def hi(name)
  p 'gogoogo'
  yield(name) # yield 会调用传进来的 block
end

# 代码块{}本身是通过参数传递给方法的
hi('code') { |name| puts "Hi, #{name}" }

def hi2
  yield
  yield
end

hi2 { p 'noah' } # 因为有两个 yield，所以会打印两次

# proc 相当于定义了一个方法变量，可以把方法当做参数传递
# 普通的方法 因为不管加不加括号，都会执行，所以不能当做参数传递
hi = proc { |xx| p "hello #{xx}" } # 通过这种方式定义的 hi，可以当做参数传递
hi.call('world') # hi 只有调用 call 方法才会执行

proc { |xx| p "hello #{xx}" }.call('world') # 可以合并为一行
# 等同于
# hi = Proc.new{ |xx| p "hello #{xx}" } # 推荐使用 proc 代替 Proc.new
# hi.call('world')

# lambda
# hi = lambda { |xx| p "hello #{xx}" }
# hi.call('world')
# hi = lambda { |xx| p "hello #{xx}" } #  lambda 推荐使用下面这种形式
# hi.call('world')
hi = ->(xx) { p "hello #{xx}" }
hi.call('world lambda')

# lambda 通常被认为是匿名函数，而 proc 更像是代码块

# 参数检查: lambda 会检查传递给它的参数数量，如果参数数量不匹配，会抛出异常。
# 而 proc 则不会检查参数数量，如果参数过多，它会忽略多余的参数，如果参数过少，缺少的参数会被设置为 nil。

# 从闭包返回: 在 lambda 中，return 关键字返回到 lambda 代码的外部，
# 而在 proc 中，return 会从定义 proc 的上下文中返回。

# Block usage1
def hello
  puts 'hello method start'
  yield
  yield
  puts 'hello method end'
end

hello { p 'I am in block' }

# Block usage2
def hello2
  p 'hello2 method start'
  yield('hello', 'world')
  p 'hello2 method end'
end

hello2 { |j, k| p "I am in block, #{j} #{k}" }

# Block usage3
def hello3(name)
  p 'hello3 method start'
  result = "hello #{name}"
  yield(result)
  p 'hello3 method end'
end

hello3('noah') { |res| p "I am in block, I got #{res}" }

# buildin methods
%w[cat dog frog].each do |animal|
  p animal
end

puts '-' * 30

%w[cat dog frog].each { |animal| p animal }

5.times do |i|
  p i
end

p '-' * 30

('a'..'d').each { |c| p c } # a 到 d， 如果是 a...d，则不包含 d
