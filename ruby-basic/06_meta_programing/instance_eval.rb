# frozen_string_literal: true

# instance_eval
# instance_eval 是所有类实例的方法
# 打开的是当前实例作用域

# instance_eval, instance methods and class methods

# 1. as a question

class User
end

User.class_eval do
  # 实例方法
  def hello
    'hello'
  end
end

# User 是 Class 的实例，因此可以调用 instance_eval 方法
# 类方法实际上是类的实例方法
# 因此这里给 User 这个实例添加了一个类方法，而不是实例方法
User.instance_eval do # instance_eval 只有实例才能调用
  # 类方法
  def hi
    'hi'
  end
end

puts User.new.hello
puts User.hi
