# regex, time

# ~ regex
/abcd/
/abcd/.class # Regexp
%r{abcd}

# ~ match
/by/ =~ 'ruby' # 2
'ruby' =~ /by/ # 2

phrase = "hello, how r u?"
match_data = /how/.match(phrase) # #<MatchData "how">


# ~ time
time = Time.now

time.year # year
time.month # month
time.day # day

time.strftime('%d/%m/%y')

time.saturday?
time.friday?
# ...


# ~ method missing
class Fish
  attr_accessor :color

  def initialize color
    @color = color
  end

  def method_missing method_name
    warn "Fish can't #{method_name}!"
  end

  def swim
    warn 'swimming...'
  end

  private
  def warn msg
    puts "[#{self.class}]: #{msg}"
  end

  protected


end


fish = Fish.new('green')
fish.swim
fish.walk

