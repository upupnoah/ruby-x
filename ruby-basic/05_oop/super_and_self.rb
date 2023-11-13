# frozen_string_literal: true

# 父类是基础的操作
# 子类中是更多的操作

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
    # @panels ||= ['Profile', 'Products', 'Manage Users', 'System Setup']
    # super # 如果父类的方法有参数，那么需要在 super 后边加上参数 super(xxx)
    super # 用来调用父类的同名方法， 这里会先调用父类的 panels 方法，然后再执行子类的 panels 方法
    @panels.concat(['Manage Users', 'System Setup'])
  end
end

# self
# self 是指向当前作用域所指向的实例本身
class User1
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def panels
    @panels ||= %w[Profile Products]
  end

  # 类方法是只有当前类可以调用，静态方法，通过类名.方法名调用
  # def self.category
  #   'User'
  # end

  # def self.xxx
  #   'xxx'
  # end
  # 优化：通过 class << self 语法可以将 类方法放在一起
  class << self
    def category
      'User'
    end

    def xxx
      'xxx'
    end
  end

  def to_s
    # "#{self.name} is #{self.age}"
    "#{name} is #{age}" # self 可以省略，因为 ruby 会一层一层向上查找
  end
end

user1 = User1.new('user_1', 18)
puts user1 # 如果实例有 to_s 方法，那么 puts 会自动调用 to_s 方法
p User1.category
