# collections

# ~ array
ufs = []

ufs.push("CE")
ufs.push("SP")
ufs.push("RJ", "RS", "RN")

ufs.insert(0, "AM")

ufs.last # last element
ufs.first # first element
ufs.include?("SP") # true if array has SP, otherwise false
ufs[0] # element 0, ufs[n] # element n

ufs.empty? # true if array is empty, otherwise false
ufs.count # number of elements

ufs.delete_at(2) # delete element at position 2
ufs.pop # delete last element and returns it
ufs.shift # delete the first element and returns it

# ~ hash
h = Hash.new # or h = {}
h[:CE] = "Fortaleza"
h[:SP] = "São Paulo"

h.keys # return the keys
h.values # return the values

h.delete(:SP) # delete this key
h[:CE] # return value of this key

h.size # return size of a hash
h.empty? # true if h is empty, otherwhise false


# ~ iterations on collections
# map, each, select
# ~ each
names = ["Pedro", "Sérgio", "Rosário"]
names.each do |name|
  puts name
end


classes = {
  aula_1: true,
  aula_2: true,
  aula_3: false,
}

classes.each do |k, v|
  status = 'liberada'
  unless v
    status = 'indisponivel'
  end

  puts "#{k.to_s} - #{status}"
end

# ~ map
names = names.map do |n|
  n.upcase
end

names.each { |n| puts n }

names.map! do |n| # rewrite the array instead of return another instance of array
  n.upcase
end

# ~ select
arr = [1, 2, 3, 4, 5, 6]
arr = arr.select do |n|
  n >= 4
end
arr.each { |n| puts n }

available_classes = classes.select do |c_class, status|
  status
end
available_classes.keys.each { |k| puts k.to_s }


