require 'json'

class Rool::Container
  attr_reader :children, :message_array, :result, :result_array
  def initialize(*children_rules)
    if !children_rules.all?{|r| r.kind_of?(Rool::Container) || r.kind_of?(Rool::Basic)}
      raise ArgumentError.new("Expected children rules to be objects in the Rool namespace")
    end
    @children = children_rules
    @message_array = []
    @result_array = []
    @result = nil
  end

  def process(dataset={})
    raise "Implement the #process in the child rule container class"
  end

  def message
    @children.each do |r| 
      @message_array << r.message unless r.message.nil?
      @result_array <<  r.result unless r.result.nil?
    end
    return @message_array
  end

  def to_json
    children_array = []
    json_hash = {class: self.class, children: children_array}

    @children.each do |r|
      children_array << {class: r.class, data_key: r.data_key, operand: r.operand, result: r.result, message: r.message}
    end

    return JSON.generate(json_hash)    
  end

  def from_json(json_string)
    object = JSON.parse(json_string)
    container = Object.const_get(object['class']).new()
    object['children'].each do |r|
      container.children << Object.const_get(r['class']).new(r["data_key"], r["operand"])
    end
    return container    
  end
end
