module Rool
  class Regex < Basic
  	def process(data)
	  	@result =	!!(data[:email] =~ @operand)
	  	if @result == false
	  		return @message = "there is no match in the dataset"
	  	else
		  	return @result
		  end
  	end
  end
end
