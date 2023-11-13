# frozen_string_literal: true

# Access Control
# public: 默认的访问权限（所有的都可以访问）
# protected： 只有自己和子类可以访问
# private： 只有自己可以访问

# User
class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  public

  def say_hello
    puts 'hello...'
    say_hi
    say_hey
  end

  protected

  def say_hi
    puts "hi #{@name}, i am #{age}"
  end

  private

  def say_hey
    puts "hey, i am #{@name}"
  end
end

user = User.new('343', 18)
user.say_hello
# user.say_hi
# user.say_hey
