# frozen_string_literal: true

# class_eval in project

# requirement: we need to execute a class method when module included

module Management
  def self.included(base)
    base.extend ClassMethods # 相当于 User 这个类有了 setup_attribute 这个类方法

    # 这里相当于重新打开了 User 类，又执行了一次 setup_attribute 方法
    base.class_eval do
      setup_attribute # 执行一些代码， 这行代码直接放上面是不行的，因为作用域里面没有 setup_attribute 方法
    end
  end

  module ClassMethods
    def setup_attribute
      puts 'setup_attribute'
    end
  end
end

class User
  include Management
end
