# frozen_string_literal: true

# class_eval as instance_eval

class User
end

User.class_eval do
  def hello
    'hello'
  end

  # works same as instance_eval
  def self.hi
    'hi'
  end
end

puts User.new.hello
puts User.hi

# 总结来说，class_eval 用于修改类的定义（如添加类方法或实例方法），而 instance_eval
# 更多地用于单个实例的上下文，例如设置实例变量或在实例的单例类中定义方法。这两个方法都是 Ruby 元编程的强大工具，
# 使得动态编程变得可能。然而，由于它们的强大和灵活性，使用时应当谨慎，以避免代码变得难以理解和维护。
