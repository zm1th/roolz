##
# Assuming that the Rool::Include is parsing a dataset and checking to see
# if the operand matches one of the keys
##

module Rool
  class Include < Basic
  	def process(dataset)
  		super
  		
  		if @operand == nil
  			return false
  		end

  		dataset.keys.each do |datum|
  			if datum == @operand.to_sym
  				return true
  			end
  		end
  		false
  	end
  end
end
