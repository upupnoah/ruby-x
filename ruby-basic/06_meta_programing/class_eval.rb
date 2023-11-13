# frozen_string_literal: true

# class_eval
# 首先 class_eval 是只有类才能调用的， Class#class_eval
# class_eval 会重新打开当前类作用域

# class_eval

# User
class User
end

# User
# class User
#   attr_accessor :name

#   def hello
#     'hello'
#   end
# end

# 重新打开 User 类，进行修改
User.class_eval do
  attr_accessor :name

  def hello
    'hello'
  end
end

user = User.new
user.name = 'noah'  

puts user.name
puts user.hello
