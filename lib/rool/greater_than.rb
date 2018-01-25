# Checks whether the operand (value passed) is greater than the dataset's value
module Rool
  class GreaterThan < Basic
    def process(dataset)
      super
      return false unless (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
      @operand > dataset[@data_key]
    end
  end
end
