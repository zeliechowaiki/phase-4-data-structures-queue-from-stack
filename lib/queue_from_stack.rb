require_relative './stack'
require 'pry'

# your code here
class MyQueue

  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(value)

    @s1.push(value)

  end

  def peek

    @s2.push(@s1.pop) until @s1.empty?

    first = @s2.peek

    @s1.push(@s2.pop) until @s2.empty?

    first
  end

  def remove

    @s2.push(@s1.pop) until @s1.empty?

    first = @s2.peek
    @s2.pop

    @s1.push(@s2.pop) until @s2.empty?
    
    first
  end

end

# binding.pry