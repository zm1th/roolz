module Rool
  class All < Container
    def process(dataset={})
      @result = @children.all?{|r| r.process(dataset)}
      return @result
    end
  end
end
