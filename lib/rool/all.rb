module Rool
  class All < Container
    def process(dataset={})
      @children.all?{|r| r.process(dataset)}
    end
    def message(dataset={})
    	@process_hash = @children.each {|r| r.process(dataset) }
    	@messages = @process_hash.map { |r| r.message unless r.message == "" }.select { |r| r != nil }
    end
  end
end
