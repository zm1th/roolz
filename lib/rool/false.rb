module Rool
  class False < Basic
  	puts "False checking in."
    def process(dataset={})
      # don't call super since this is an absolute answer
      false
    end
  end
end
