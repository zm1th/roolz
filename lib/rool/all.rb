module Rool
  class All < Container
    def process(dataset={})
      return @result = @children.all?{|r| r.process(dataset)}
    end
  end
end
