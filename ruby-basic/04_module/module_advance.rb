# frozen_string_literal: true

# class structure, method finding

# User
class User
  def panels
    @panels ||= %w[Profile Products]
  end
end

class Admin < User
end

# puts Admin.ancestors
admin = Admin.new
p admin.panels
