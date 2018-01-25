module Rool
  class Regex < Basic
  	def process(data)
  		super
	  	@result =	!!(data[:email] =~ @operand)
	  	if @result == false
	  		@message = "there is no match in the dataset"
	  	end
  	end
  end
end
