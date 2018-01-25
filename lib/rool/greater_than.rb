module Rool
  class GreaterThan < Basic
    def process(dataset)
      super
      @result = (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
      @operand > dataset[@data_key]
      
    end
  end
end
