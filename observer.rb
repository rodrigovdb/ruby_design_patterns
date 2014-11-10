# encoding: utf-8

require "observer"

# @see http://ruby-doc.org/stdlib-2.1.0/libdoc/observer/rdoc/Observable.html
class MyTrigger
  include Observable

  def run(value)
    # Do something with value...
    @value = value

    # The follow 2 lines that will send the signal to all listener classes.
    changed
    notify_observers(value)
  end
end

# An abstract observer of Ticker objects.
class MyListener
  # my_trigger must be a instance of a class with observable included,
  # in this case, MyTrigger
  def initialize(my_trigger)
    my_trigger.add_observer self
  end
end

class MyListener1 < MyListener
  # This is the method that will receive the signal from MyTrigger::run
  # and the parameter received is the same send on notify_observers method
  def update(value)
    puts "\n\n"
    puts '#' * 200
    puts "Inside MyListener1 ... Value: #{value}"
    puts '#' * 200
    puts "\n\n"
  end
end

class MyListener2 < MyListener
  # This is the method that will receive the signal from MyTrigger::run
  # and the parameter received is the same send on notify_observers method
  def update(value)
    puts "\n\n"
    puts '#' * 200
    puts "Inside MyListener2 ... Value: #{value}"
    puts '#' * 200
    puts "\n\n"
  end
end

class MyListener3 < MyListener
  # This is the method that will receive the signal from MyTrigger::run
  # and the parameter received is the same send on notify_observers method
  def update(value)
    puts "\n\n"
    puts '#' * 200
    puts "Inside MyListener3 ... Value: #{value}"
    puts '#' * 200
    puts "\n\n"
  end
end


trigger   = MyTrigger.new
listener1 = MyListener1.new trigger
listener2 = MyListener1.new trigger
listener2 = MyListener1.new trigger
trigger.run(10)
