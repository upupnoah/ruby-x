# frozen_string_literal: true

# Inheritance 继承

# User
class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def panels
    @panels ||= %w[Profile Products]
  end
end

# Admin inherits from User
class Admin < User
  def panels
    @panels ||= ['Profile', 'Products', 'Manage Users', 'System Setup']
  end
end

user = User.new('user_1', 18)
p user.name
p user.panels

puts '-' * 30

admin = Admin.new('admin_1', 28)
puts admin.name
p admin.panels

p Admin.superclass # 通过 superclass 方法可以查看父类

# Ruby 中没有多重继承
# 后边会讲通过 module 实现多重继承
