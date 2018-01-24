##
# Assuming that 'complete subset' denotes a subset that 
# contains at least all of the values in the given set.
# Determines whether the operand is a complete 
# subset of the dataset's data_key.
##

require 'set'


module Rool
  class Subset < Basic
    def process(dataset)
      super

      if dataset[@data_key].is_a?(Array) && @operand.is_a?(Array)
      	key_set = dataset[@data_key].to_set
      	operand_set = @operand.to_set
      	return operand_set.subset?(key_set) || operand_set == key_set
      end
      false
    end
  end
end