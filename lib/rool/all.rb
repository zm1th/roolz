module Rool
  class All < Container
  	puts "All checking in."
    def process(dataset={})
      @children.all?{|r| r.process(dataset)}
    end
  end
end
