# frozen_string_literal: true

# included method
# included: 当模块被 include 时会被执行，同时会传递当前作用域的 self 对象
# 这其实是一个设计模式：通过这种写法，可以把一个模块中的类方法和实例方法分别再次封装
# Management
module Management
  def self.included(base)
    puts "Management is being included into #{base}"

    # base 代表 include 的类（比如在 User 中include 了 Management，那么 base 为 User）
    base.include InstanceMethods # 放调用链的后面
    base.extend ClassMethods # 放调用链的前面
  end

  # InstanceMethods
  module InstanceMethods
    def company_notifies
      'company_notifies from management'
    end
  end

  # ClassMethods
  module ClassMethods
    def progress
      'progress'
    end
  end
end

class User
  include Management
end
puts '-' * 30
p User.ancestors
user = User.new
puts user.company_notifies

puts '-' * 30
puts User.progress
