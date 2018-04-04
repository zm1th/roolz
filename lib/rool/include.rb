# The operand is any value that can be in an array.
# The data_key should point to a part of the dataset that has an array in it.
# The rule checks whether the array includes the operand.

module Rool
  class Include < Basic
  	def process(data)
			@result = @operand&.include?(data)	
			if @result == false
				return @message = "That element is not included in the dataset"
			else
				return @result
			end
  	end
  end
end
