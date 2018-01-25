module Rool
  class False < Basic
    def process(dataset={})
      # don't call super since this is an absolute answer
      self.instance_variable_set(:@result, false)
      self.instance_variable_set(:@message, "This method automatically returns False.")
      false
    end
  end
end
