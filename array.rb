array = Array.new
array = []

array = [1, 2, 3]
array[0] # => 1

array.each do |item|
  puts item
end

[1, [2, 3]].flatten # => [1, 2, 3]