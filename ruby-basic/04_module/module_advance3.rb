# frozen_string_literal: true

# module included sequence

# Management
module Management
  def company_notifies
    'company_notifies from management'
  end
end

# Track
module Track
  def company_notifies
    'company_notifies from track'
  end
end

# User
class User
  include Management
  include Track

  def company_notifies
    puts super
    'company_notifies from user'
  end
end

p User.ancestors # 通过 ancestors 方法可以查看调用链，很方便

puts '-' * 30
user = User.new
puts user.company_notifies
