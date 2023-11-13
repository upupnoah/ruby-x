# frozen_string_literal: true

# require vs load
# 相同点：都会在 $LOAD_PATH 中查找当前要引入的文件
# 不同点：
#   - require 调用文件时不需要".rb"后缀，load 需要
#   - require 只对同样的文件引入一次，load 每次都会引入
# load 一般不常用
# 1. print require and load result

require 'net/http'
# puts require 'net/http'
# puts require 'net/http'

# puts load 'net/http.rb'
# puts load 'net/http.rb'

puts Net::HTTP
