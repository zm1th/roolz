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
