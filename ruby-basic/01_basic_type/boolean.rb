# frozen_string_literal: true

# Boolean 表达式
# &&, ||, !
# And, Or, Not

# boolean clause1

puts (true and true)
puts (true and false)
puts (true or false)
puts (not true)

# boolean clause2

a = nil
b = a || 4 # 因为 a 为 nil，所以 b = 4（因为|| 因此还会看后面的）
puts b

c = b && 5 # 因为 b 成立，所以 c = 5（会往后面执行）
puts c

# boolean clause3
a = nil
b = a or 4 # or 的优先级比 = 低，所以 b = nil
puts b # => will be nil

c = b && 5 # nil 在 ruby 中实际上是一个 false（否）
puts c # => will be nil
