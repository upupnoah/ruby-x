# frozen_string_literal: true

# Module 本质上也是一个 class
p Array.ancestors # => [Array, Enumerable, Object, Kernel, BasicObject]
p Enumerable.class # => Module
p Module.class # => Class

# Module 本身是去除了一些实例化的功能的

# module acts like a class

# Management
module Management
  def company_notifies
    'company_notifies from management'
  end
end

# User
class User
  include Management # 根据调用链，我们可以把 module 看成是 User 的父类

  def company_notifies
    puts super # 因此这里的 super 会调用 module（“父类”） 中的同名方法
    'company_notifies from user'
  end
end

p User.ancestors

puts '-' * 30
user = User.new
puts user.company_notifies
