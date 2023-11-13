# frozen_string_literal: true

# extend

# User
class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def panels
    @panels ||= %w[Profile Products]
  end
end

# CompanyFeature
module CompanyFeature
  def new_record
    'new_record'
  end
end

class Admin < User
  extend CompanyFeature
end

class Staff < User
  extend CompanyFeature
end

puts Admin.new_record
