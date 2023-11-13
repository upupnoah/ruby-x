# frozen_string_literal: true

# method missing
# 当 当前作用域上下文没有找到方法时就会调用 method_missing 方法

# 1. how it works
# 2. ancestors
# 3. rails's AR

class User
  def hello
    'hello from User'
  end

  def method_missing(name, *args)
    "method name is #{name}, parameters: #{args}"
  end
end

user = User.new
puts user.hello

puts '-' * 30
puts user.hi('343', 19)

# 工作流程：
# 找不到我调用的方法就会再去找是否定义了 method_missing 方法，如果定义了就会调用 method_missing 方法
# 如果没有定义 method_missing 方法，就会根据调用链一直往上找
