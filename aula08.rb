# blocks, lambdas, modules ...

# ~ blocks
def foo
  puts "before"
  yield
  puts "after"
end


def bar(msg, &block)
  @msg = msg
  block.call
end

foo { puts '...'}
bar("hello, world!") { puts "msg: #{@msg}" }


# ~ lambda
fn = lambda { "hello" }
puts fn.call

f = -> (x) { x * 2 }
puts f.call(2)

f2 = lambda do |numbers|
  sum = 0
  numbers.each do |n|
    sum += n
  end

  sum
end

puts f2.call([2, 3, 5, 7])


# ~ modules
module ReverseWord
  def self.puts t
    print t.reverse.to_s + "\n"
  end
end

ReverseWord::puts "hello, world!"


