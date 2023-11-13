# frozen_string_literal: true

# 变量类型
# snake
# local variables 局部比变量： a = 1, b = "hello"
# constants 常量： Names = ['john', 'alex']
# global variables 全局变量：$platform='mac'
# instance variables 实例变量：@name = "343"
# class variables 类变量 @@counter = 20

# Constant
Name = '343'
# Name = '343s' # => output warning

# Name.replace '343_2' # => safe， 因为有 frozen_string_literal:true， 因此这里会报错
p Name

# Class
class User
  attr_reader :name

  @counter = 0 # Class instance variable

  class << self
    attr_accessor :counter
  end

  def self.increment_counter
    @counter += 1
  end

  def initialize(name)
    @name = name
    self.class.increment_counter
  end

  def count
    self.class.counter
  end
end

User.counter # => Access class instance variable

user = User.new 'noah'
puts user.name
puts user.count

# global variable

def hello
  # puts $$ # => process id
  puts $PID
  # p $: # => ruby loading path
  puts $LOAD_PATH
end

hello
