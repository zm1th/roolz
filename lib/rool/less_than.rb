module Rool
  class LessThan < Basic
    def process(dataset)
      if (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
      	if @operand < dataset[@data_key]
      		return true
      	else
      		self.instance_variable_set(:@result, false)
      		self.instance_variable_set(:@message, "#{@operand} is NOT less than #{dataset[@data_key]}")
  				return false
      	end
      end
      false
    end
  end
end
