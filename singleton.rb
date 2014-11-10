# encoding: utf-8

require 'singleton'

# This class use ruby singleton method, just include and invoke instance method.
class MyClass
  include Singleton

  attr_accessor :my_attr
end

# This class implements singleton pattern.
# Same as previous, but with more effort.
class MySingletonClass
  @@instance  = MySingletonClass.new

  attr_accessor :my_attr

  def self.instance
    @@instance
  end

  private_class_method :new
end

c1 = MySingletonClass.instance
c2 = MySingletonClass.instance

puts "\n\n"
print c1 == c2
puts "\n\n"
