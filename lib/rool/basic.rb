# This is the parent class for all non-container rules. Put shared functionality here.
# The data_key specifies which part of the dataset will be used in the rule.
# The operand is the value to be used during the rule's computation.

class Rool::Basic

  attr_accessor :data_key, :operand, :result, :message
  def initialize(data_key = nil, operand = nil)
    @data_key = data_key
    @operand = operand
    @result = nil
    @message = nil
  end

  def process(dataset = {})
    raise ArgumentError.new("Expected the dataset to be a ruby Hash") unless dataset.kind_of?(Hash)
    return false unless dataset.key?(@data_key)
  end

  def to_json
    JSON.generate({class: self.class, data_key: self.data_key, operand: self.operand})
  end

  def from_json(json_string)
    object = JSON.parse(json_string)
    Object.const_get(object['class']).new(object['data_key'], object['operand'])
  end

end
