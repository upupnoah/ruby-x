# frozen_string_literal: true

# =~ 正则匹配
/hello/i =~ 'Hello Ruby' # => 0, 没有匹配到返回 nil， 匹配到返回匹配到的起始位置

# !~ 正则不匹配
/343/i !~ 'Hello Ruby' # => true, 没有匹配到返回 true 匹配到返回 false

# alias
# 应用场景是当前引用了一个第三方的组件，他里面已经定义了方法，我们需要覆盖或者自定义这个方法，但是又不想覆盖原来的方法，这时候就可以使用 alias
def hello
  'hello'
end

alias old_hello hello

def hello
  'new hello'
end

p old_hello
p hello
