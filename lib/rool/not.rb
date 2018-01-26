module Rool
  class Not < Container
  	def initialize(children_rules)
  		super
  	end
  	def process
  		@result = @children.all?{|r| r.process}
  		return @result
  	end
  end
end
