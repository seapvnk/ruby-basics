# files, requests
# ~ files
file = File.open 'aula09.rb'
i = 0
file.each do |line|
  i += 1
  puts "#{i}|#{line}"
end

file.close

list = [1, 2, 3, 4, 5]
File.open('list.txt', 'a') do |line|
  list.each do |item|
    line.puts item
  end
end

# requests
require 'net/http'

# simple get
response = Net::HTTP.get('www.google.com', '/')
File.open('google.html', 'w') do |line|
  line.puts response
end

# api get
https = Net::HTTP.new('reqres.in', 443)
https.use_ssl = true
response = https.get('/api/users')

puts response.code
puts response.message
puts response.body

# api post ~ building request
req = Net::HTTP::Post.new('/api/users')
req.set_form_data({
  name: 'Mario',
  job: 'Encanador'
})

response = Net::HTTP.start('reqres.in', use_ssl: true) do |http|
  http.request(req)
end

puts response.code
puts response.body


# nokogiri
# gem install nokogiri
require 'nokogiri'
require 'net/http'

https = Net::HTTP.new("www.stewartmath.com", 443)
https.use_ssl = true

response = https.get("/")
doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')
puts h1.content

