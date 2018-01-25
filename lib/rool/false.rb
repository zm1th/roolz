# An identity rule that always returns false regardless of the dataset
module Rool
  class False < Basic
    def process(dataset={})
      # don't call super since this is an absolute answer
      false
    end
  end
end
