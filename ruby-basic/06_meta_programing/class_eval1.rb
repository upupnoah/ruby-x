# frozen_string_literal: true

# module's self

module Management
  # self 关键字绑定了当前模块，因此 User 不能调用 track 方法
  def self.track
    'track'
  end
end

class User
  include Management
end

User.track # => error
# Management.track
