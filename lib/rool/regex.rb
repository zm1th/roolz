# The operand is a regular expression.
# dataset[data_key] is a string.
# The rule returns true if the dataset's key matches the operand.

module Rool
  class Regex < Basic
  	def process(data)
	  	@result =	!!(data[@data_key] =~ @operand)
	  	if @result == false
	  		return @message = "no match was found"
	  	else
		  	return @result
		  end
  	end
  end
end
