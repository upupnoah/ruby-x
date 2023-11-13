# frozen_string_literal: true

# module's class method

# Management
module Management
  # 像使用类方法一样使用 module 方法
  def self.progress
    'progress'
  end

  # you need to include/extend/prepend to use this method
  # 你需要 include/extend/prepend 才能使用这个方法
  def company_notifies
    'company_notifies from management'
  end
end

puts Management.progress
