# 11frozen_string_literal: true

# instance_eval, singleton_method

a = 'hello'

# 只有在 a 上面添加了 to343 方法
a.instance_eval do
  def to343
    self.replace('343')
  end
end

puts a.to343

# b = 'world'
# b.to343 # => error
