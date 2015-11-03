# Hash to array
{ :one => "one", :two => 2 }.to_a

# Array to Hash
myHash = Hash.new
["one", 2].each_with_index {|item, index| myHash[index] = item}

puts myHash

# Iterate a hash
{ :one => "one", :two => 2 }.each {|item| puts item}