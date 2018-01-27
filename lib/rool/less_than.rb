module Rool
  class LessThan < Basic
  	def process(dataset)
  		super
  		if (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
  			if @operand > dataset[@data_key]
	      	return @result = true
	      else
	      	@result = false
		      return @message = "operand is greater than or equal to value in data set"
		    end
  		else
  			@result = false
  			return @message = "operand is not an integer or float."
  		end
      
  	end
  end
end
