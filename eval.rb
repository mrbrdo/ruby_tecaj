module MyNamespace
  eval("puts self.inspect")
  
  self.instance_eval("puts self.inspect")
  
  self.instance_eval do
    puts self.inspect
  end
  
  self.class.class_eval do
    puts self.inspect
  end
end