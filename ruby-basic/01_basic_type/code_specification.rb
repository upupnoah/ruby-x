# frozen_string_literal: true

# UTF-8 编码
# 使用空格缩进， 不使用 tab， 1 tab = 2 spaces
# 不需要使用; 和 反斜杠\连接代码

# demo
_a = 1
_b = 'Hello world'

# one line
_c = %w[pear cat dog]

# or multiple lines
_c2 = [
  'pear',
  'cat',
  'dog',
]

d = { name: '343', age: 18 }
d2 = {
  name: '343',
  age: 18,
  gender: '男',
}

# with or without()
def hello(name, age = 18)
  p "hello #{name}, and age is #{age}"
end

# def hello name, age = 19
#   p "hello #{name}, and age is #{age}"
# end
