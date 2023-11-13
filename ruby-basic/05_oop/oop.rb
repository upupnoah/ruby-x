# frozen_string_literal: true

# oop: 面向对象
# 设计模式
# 人
# 属性：attribute
# 行为：方法，method

a = 'hello'
b = 3.14
p a.class
p b.class

puts '-' * 30

# String.New
# class String # 内置类

# end
a = String.new('hello')
p a

# Instance method & Instance Attribute
# 在其他语言里面是成员方法 和 成员属性
# 使用@定义实例变量

puts '-' * 30

# 创建自己的类
class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  # getter
  def name
    @name
  end

  def age
    @age
  end

  # setter
  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end
end

user = User.new('noah', 18)
puts user.name
puts user.age
user.name = ('alex')
puts user.name

puts '-' * 30

# 优化Class 的定义
class UserOp
  # attr_reader :name, :age # getter
  # attr_writer :name, :age # setter
  # 上面这两个可以合成： attr_accessor :name, :age
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def say_hello
    puts "hello #{@name}, I am #{@age} years old"
  end
end

uo = UserOp.new('noah', 23)
puts uo.name
uo.name = 'noah-future'
puts uo.name
uo.say_hello

puts '-' * 30

# Class method & Class variable
# 上面的例子是实例方法和实例变量
# 现在是类方法和类变量
# Class method： 类方法，静态方法
# Class variable： 类变量 使用 @@定义

# class UserM
#   attr_accessor :name, :age

#   @@counter = 0 # 类变量

#   def initialize(name, age)
#     @name = name
#     @age = age
#     @@counter += 1
#   end

#   def say_hello
#     puts "hello #{@name}, I am #{@age} years old"
#   end

#   def self.get_counter # 这个是类方法， 不需要实例化类也可以直接调用
#     @@counter
#   end
# end

# 优化
class UserM
  attr_accessor :name, :age

  @counter = 0 # 类实例变量

  def initialize(name, age)
    @name = name
    @age = age
    self.class.increment_counter
  end

  def say_hello
    puts "hello #{@name}, I am #{@age} years old"
  end

  # 类方法
  class << self
    attr_reader :counter

    def increment_counter
      @counter += 1
    end
  end
end

puts UserM.counter
