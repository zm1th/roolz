class Rool::Container
  attr_reader :children
  def initialize(*children_rules)
    if !children_rules.all?{|r| r.kind_of?(Rool::Container) || r.kind_of?(Rool::Basic)}
      raise ArgumentError.new("Expected children rules to be objects in the Rool namespace")
    end
    @children = children_rules
    @message_array = []
    @result = nil
  end

  def process(dataset={})
    raise "Implement the #process in the child rule container class"
  end

  def message
    @children.each do |r| 
      if r.process(dataset = {}).class == String
        @message_array << r.process(dataset = {})
      end
    end
    return @message_array
  end
end
