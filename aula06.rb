# OOP

# defining a class
class Computer
  attr_reader :power

  def turn_on
    @power = true
  end

  def shutdown
    @power = true
  end

end

computer = Computer.new
computer.turn_on

# inheritance
class Animal

  def sleep
    puts "[#{self.class}]: Zzzzzz..."
  end

end

class Cat < Animal
  
  def meow
    puts 'meow'
  end

end

cat = Cat.new
cat.sleep


# polymorphism
class WritingTool
  
  def write subject
    puts "[#{self.class}] is writing: \"#{subject}\"..."
  end
  
end

class Pencil < WritingTool
end

class Pen < WritingTool
end

class Keyboard < WritingTool

  def write subject
    puts "[#{self.class}] is writing: \"#{subject}\" on computer..."
  end

end



Pencil.new.write "hmmmm"
Pen.new.write "hmmmm"
Keyboard.new.write "hmmmm"

