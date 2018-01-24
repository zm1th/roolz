module Rool
  class Not < Container
  	def process(dataset={})
  		if @children.length != 1
  			raise "Rool::Not can only accept one argument"
  		else
  			if @children[0].process == true
  				puts "flippin it to false"
  				return false
  			elsif @children[0].process == false
  				puts "flippin it to true"
  				return true
  			end
  		end
  		puts "wtf?"
    end
  end
end
