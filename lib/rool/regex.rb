module Rool
  class Regex < Basic
  	def process(dataset)
  		super
  		if @operand.respond_to?(:match?) && dataset[@data_key].respond_to?(:<)
  			return @operand.match?(dataset[@data_key])
  		end
  		false
  	end
  end
end
