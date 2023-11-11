# frozen_string_literal: true

# Method
def hi(name)
  # p 'hi ' + name
  p "hi #{name}"
end

hi('world')
hi 'code'

def hello(name)
  p "hello #{name}"
end

hello '343'

# Method 返回值, 最后一行的返回值，就是最终的返回值
def hi
  p 'ok'
end

hi # => nil

def hi2
  'ok' # 返回值为 'ok'
end

a = hi2
puts a
