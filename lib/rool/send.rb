class Rool::Send

	attr_accessor :rool_type, :method, :operand
	def initialize(rool_type, method, operand)
		@rool_type = rool_type
		@method = method
		@operand = operand
		@data_key = nil
	end

	def process(dataset={})
		if !dataset.empty?
			@data_key = dataset.reduce[0]
		end
		Object.const_get("Rool::#{@rool_type.split.map(&:capitalize)*''}").new(@data_key, @operand).send(@method.to_sym, dataset)
	end


end