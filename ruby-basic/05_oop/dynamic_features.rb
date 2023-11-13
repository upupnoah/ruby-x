# frozen_string_literal: true

p Array.class # => Class
p Class.class # => Class

p Array.superclass # => Object
p Object.superclass # => BasicObject
p BasicObject.superclass # => nil

# ancestors 查看一个类的继承链
p Array.ancestors # => [Array, Enumerable, Object, Kernel, BasicObject]

# Method Finding
# 自内而外，自上而下

# overwrite
# 如果要给所有 数组 添加一个方法，那么可以直接在 Array 类中添加
class Array
  def to_hello_world
    # "hello #{self.join(', ')}"
    "hello #{join(', ')}"
  end
end

a = %w[cat horse dog]
puts a.to_hello_world

# 平时写的时候尽量不要重写或者覆盖内置类的方法：例如 Array 类
