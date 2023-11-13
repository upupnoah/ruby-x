# frozen_string_literal: true

# load_path
# $LOAD_PATH
# Ruby 代码的查找路径为当前的 $LOAD_PATH换将变量
# Ruby 文件名命令规则：文件的名字代表了当前 class/module 的名字

$LOAD_PATH << File.expand_path('../track/lib', __FILE__)

require 'track'
# require 'net/http'

puts Track::VERSION
puts Track::Parser.parse

# 在项目中，ruby 希望我们 文件名和 class/module 的名字保持一致
# 小写 + 下划线
