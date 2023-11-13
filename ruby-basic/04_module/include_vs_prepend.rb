# frozen_string_literal: true

# include: 将 module 中的方法作为实例方法引入
# prepend: 将 module 中的方法作为实例方法引入，但是会优先于类中的同名方法执行
# include: 放到类的继承链的后面
# prepend：放到类的继承链的前面 (ruby 2.0 之后才有)

# module include

# include

# Management
module Management
  def company_notifies
    'company_notifies from management'
  end
end

# User
class User
  prepend Management
  # include Management

  def company_notifies
    'company_notifies from user'
  end
end

p User.ancestors # 调用方法的时候，会从调用链的前面开始查找

puts '-' * 30
user = User.new
puts user.company_notifies
