# Awesomeprint replaces irb's default pretty printingwith fancier formatting
# begin
#   require 'rubygems'
# rescue LoadError => e
#   puts "unable to load rubygems #{e}"
# end

class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end

# return a Hash of symbols to random numbers
class Hash
  def self.test_list
    Array(:a..:z).each_with_object({}) {|x,h| h[x] = rand(100) }
  end
end

# return an Array of random numbers
class Array
  def self.test_list(x=10)
    Array(1..x)
  end
end

# return a sorted list of methods minus those which are inherited from Object
class Object
  def interesting_methods
    (self.methods - Object.instance_methods).sort
  end
end

puts ("Loading ~/.pryrc")
