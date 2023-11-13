# frozen_string_literal: true

a = 'hello'
puts a.object_id

# a.replace('hello2')
puts a
puts a.object_id

a = 'Hello' # 重新赋值，a的object_id改变（新的对象）
puts a.object_id

arr = %w[a b]
puts arr[1], arr[2] # 越界是 nil， 使用 puts 不会输出

a = { "a": 1, "b": 2 } # 区别是 key 是 symbol， 定义 hash （目前的新语法）
b = { 'a' => 1, 'c' => 999 } # key 是 string
puts a
puts b['c']
puts a[:b] # 为 2， 因为 a 中 "b":2, 读作 a symbol b

# ! 结尾
str1 = 'hello'
str2 = 'test'
# str1.capitalize! # 原地修改, 并返回结果
puts str2.capitalize # 会返回结果，但是本身没变
puts str1
puts str2

# ? 结尾
a = 'hello'
puts a.is_a?(String)

# nil： nil 和 false 都表示否，其他的都是 true
a = nil
puts a.nil?

# 引号，单引号和双引号的区别
# 单引号：不会进行插值，不会进行转义
# 双引号：会进行插值，会进行转义
# 反引号：执行系统命令
puts `ls`

# 使用 %w 创建包含单词的数组，适用于不需要字符串插值和特殊符号的情况
arr = %w[a b]
p arr

# 如果你需要在数组的字符串中使用插值或者特殊符号，使用 %W
x = 'hello'
arr = %W[a #{x}]

p arr
