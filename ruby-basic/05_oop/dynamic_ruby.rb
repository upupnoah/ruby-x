# frozen_string_literal: true

# attr_accessor从哪里来的？
# 从Object类中来的 Class类

# Class.attr_accessor
# define_method

define_method :hello do
  puts 'hello world'
end

# 整个上下文中，已经有了 hello 这个方法
hello

# 自定义 attr_accessor

# 通过 defined method 动态地定义一些方法和属性

# User
class User
  def self.setup_accessor(var)
    define_method var do
      instance_variable_get "@#{var}"
    end

    define_method "#{var}=" do |value|
      instance_variable_set "@#{var}", value
    end
  end
  setup_accessor :name
  setup_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
