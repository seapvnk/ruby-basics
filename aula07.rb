# OOP II

require_relative 'aula06.rb'

class Person
  @@user_count = 0

  def initialize(name, age)
    @@user_count += 1

    @id = @@user_count
    @name = name
    @age = age
  end

  def check
    puts "[#{self.class}<#{@id}>]: #{@name}: #{@age}"
  end

end

animal = Animal.new
animal.sleep


Person.new("Pedro", 20).check
Person.new("Sérgio", 20).check
