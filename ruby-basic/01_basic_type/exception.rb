# frozen_string_literal: true

# inherit from Exception Class

# 常见 Exception
# StandardError
# SyntaxError
# RuntimeError
# ArgumentError
# NameError
# etc.

# exception
def hello(name)
  raise name
end

# # hello
# hello('noah')

begin
  hello
rescue RuntimeError
  p 'got RuntimeError'
rescue ArgumentError
  p 'got ArgumentError'
end

# begin
#   hello
# rescue => e
#   p "catch exception with name: #{e.class}"
#   # else
#   #   # ...
#   # ensure
#   # ...ARGF 清理工作
# end
