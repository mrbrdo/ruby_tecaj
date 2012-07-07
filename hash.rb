hash = Hash.new
hash = {}

# lahko problem ce gre za argument metodi:
metoda { :a => 1 }
# syntax error, unexpected tASSOC, expecting '}'
metoda({ :a => 1 }) # ok

# zadnji argument metodi, izpuscanje oklpeajev
metoda :a => 1

hash = { :a => 1, "b" => 2, 3 => 4 }
hash = { a: 1, b: 2 } # shortcut za Symbol keye

hash[:a] # => 1
hash.each_pair do |key, value|
  puts "#{key}: #{value}"
end

hash.keys # => [:a, :b]
hash.values # => [1, 2]