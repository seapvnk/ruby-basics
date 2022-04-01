# methods

def hello name
  puts "hello, #{name}"
end

def sum(a, b)
  a + b
end


hello :pedro
hello "pedrinho"

puts sum 1, 3

# gem
# gem install os

require 'os'

def os_info
  if OS.windows?
    my_os = "Windows"
  elsif OS.mac?
    my_os = "Osx"
  elsif OS.linux?
    my_os = "Linux"
  else
    my_os = "unknown"
  end

  "[#{my_os}]: #{OS.cpu_count}x cores, #{OS.bits} bits"
end

puts os_info

__END__

/Gemfile
source 'https://rubygems.org'

gem 'os'
