module Rool
  class True < Basic
    def process(dataset={})
      # don't call super since this is an absolute answer
      true
    end
  end
end
