# frozen_string_literal: true

# Blocks
# block 是一个参数
# 匿名函数
# Callback
# 使用 do/end 或者 {} 来定义
#   一行代码的时候，使用 {}
#   多行代码的时候，使用 do end

# variable scope
# before ruby2.0 之前，block 会改变外部变量的值

# block return value

# Array test for block return value
# 重写 Array 类的 find 方法
class Array
  def find
    each do |value|
      return value * 100 if yield(value)
    end
    nil
  end
end

puts [1, 2, 2, 3].find { |x| x == 2 }

# block as named parameter
# &block 的方式适合内部将 &block 作为参数传递给其他方法, 而 yield 适合在内部直接调用 block
def hello(name, &block)
  p "hello #{name}, from method"
  block.call(name)
end

hello('noah') { |x| p "hello #{x} from block" }

def hello2(name)
  p "hello #{name}, from method"
  yield(name)
end

hello2('noah') { |x| p "hello #{x} from block" }

# p 和 puts
# p: 是一个更接近于调试的方法，它调用了 inspect 方法在标准输出上输出参数的字面值，
# 然后跟一个换行符。这对于查看变量的类型或者查看某些不易直接转化为字符串的对象（如数组和哈希）的实际内容很有用
# puts：将每个参数转换为字符串，然后输出到标准输出（通常是终端），每个参数输出后跟一个换行符，
# 使得连续的 puts 调用会输出在新的行上。如果参数是数组，puts 会输出数组的每个元素在不同的行上

# block_given?
def bg
  if block_given?
    yield
  else
    p 'hello form method'
  end
end

bg { p 'hello from block' }

# block can be closure
def counter
  sum = 0
  # proc { |x| x = 1 unless x; sum += x }
  proc do |x|
    x ||= 1 # x = 1 unless x
    sum += x
  end
end

c2 = counter
p c2.call(1)
p c2.call(1)
p c2.call(1)

# new method to create block = lambda
# 单行使用 ->， 多行使用 lambda
# name is required
hello = lambda { |name|
  p "hello #{name}"
  p '123'
}
p hello.call('noah')

p '-' * 30

# name is required
hello2 = ->(name) { "hello #{name}" }
# p hello2.call
p hello2.call('noah')

# lambda 更像是一个方法，而 proc 更像是一个代码块
# lambda 会检查参数数量，如果参数数量不匹配，会抛出异常。
# 而 proc 则不会检查参数数量，如果参数过多，它会忽略多余的参数，如果参数过少，缺少的参数会被设置为 nil
