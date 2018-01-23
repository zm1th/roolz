class Rool::Basic
	puts "Basic checking in."
  attr_accessor :data_key, :operand
  def initialize(data_key = nil, operand = nil)
    @data_key = data_key
    @operand = operand
  end

  def process(dataset = {})
    raise ArgumentError.new("Expected the dataset to be a ruby Hash") unless dataset.kind_of?(Hash)
    return false unless dataset.key?(@data_key)
  end

end
