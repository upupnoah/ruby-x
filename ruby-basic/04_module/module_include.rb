# frozen_string_literal: true

# Module 作用
# namespace
# mixin：实现类似于多类继承的功能
# storage

# module 关键字
# include：把一个 module 的方法注入为实例方法
# extend：把一个 module 的方法注入为类方法

# User
# 公司的通知只有 Admin 和 Staff 才能收到，有两种方法
# 1. 给 Admin 和 Staff 分别定义一个 company_notifies 方法
# 2. 使用 module
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

# module Management
module Management
  def company_notifies
    'You have a new notify'
  end
end

# Admin
class Admin < User
  include Management # 通过 include 关键字，将 module 中的方法注入为实例方法

  def panels
    super
    @panels << ['Manage Users', 'System Setup']
  end

  # def company_notifies
  # end
end

# Staff
class Staff < User
  include Management

  def panels
    super
    @panels << ['Tasks']
  end

  # def company_notifies
  # end
end

admin = Admin.new('admin_1', 28)
puts admin.company_notifies

puts '-' * 30

staff = Staff.new('staff_1', 18)
puts staff.company_notifies
