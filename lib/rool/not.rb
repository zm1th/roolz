module Rool
  class Not < Container
  	def process(dataset={})
  		if @children.length > 1
  			raise "Only one child rule may be passed"
  		end
  		#find a way to single out the true/false from expect.
  		#@children comes through as an array, index 0 should bring out true/false.
  		if @children[0].process(dataset) == true
  			return false
  		elsif @children[0].process(dataset) == false
  			return true
  		end
  		#It worked!
  	end
  end
end

