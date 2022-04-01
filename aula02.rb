# tipos de dados

# int
i = 10
i.class # Integer

# float
f = 10.20
f.class # Float

# bool
btrue = true
btrue.class # TrueClass
bfalse = false
bfalse.class # FalseClass

# string
s = "pedro"
s.class # String

# array
a = [1, 2, 3]
a.class # Array
a[0] # primeiro valor
a[1] # segundo valor
# ... a[n] # n + 1 valor

# symbol
sym = :ruby_symbol
sym.class # Symbol
sym.object_id # posicao na memoria

# hash
h = { course: 'ruby', language: "pt-br" }
h[:course] # 'ruby

# i/o

print "enter your name: "
name = gets.chomp
puts "hello, #{name}"

print "a: "
a = gets.chomp.to_i


print "b: "
b = gets.chomp.to_i

sum = a + b
prod = a * b

puts "sum: #{sum}"
puts "prod: #{prod}"

