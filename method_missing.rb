class A
  def test_existing
    
  end
  
  def method_missing(name, *args, &block)
    puts "A: #{name}"
    super(name, *args, &block)
  end
end

class B < A
  def method_missing(name, *args, &block)
    puts "B: #{name}"
    super(name, *args, &block)
  end
end

B.new.test_missing
B.new.test_existing