# estruturas de controle

# ~ decision
# if 
day = 'sunday'
lunch = 'not special'
if day == 'sunday'
  lunch = 'special'
end

puts "lunch is #{lunch} today"

# else 
day = 'sunday'
if day == 'sunday'
  lunch = 'special'
else
  lunch = 'not special'
end

puts "lunch is #{lunch} today"

# else 
day = 'holiday'
if day == 'sunday'
  lunch = 'special'
elsif day == 'holiday'
  lunch = 'very special'
else
  lunch = 'not special'
end

puts "lunch is #{lunch} today"

# unless
product_status = :closed
status = 'can'

unless product_status == :open
  status = 'cannot'
end

puts "you #{status} edit the product"

# case
print 'enter your birth month: '
month = gets.chomp.to_i

case month
when 1..3
  puts "1/4 of year"
when 4..6
  puts "2/4 of year"
when 4..6
  puts "3/4 of year"
when 4..6
  puts "4/4 of year"
else
  puts "invalid month"
end

# ~ iterations
# for
arr = [1, 2, 3, 4]
sum = 0
for n in arr
  sum += n
end
puts sum

# while
n = 1
while n <= 10
  puts n
  n += 1
end

# loop
n = 1
loop do
  puts n
  n += 1
  break if 10 < n
end

# times
10.times do |n|
  puts n * n
end

