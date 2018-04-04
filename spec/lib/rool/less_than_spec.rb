
describe "Rool::LessThan" do
  describe '#process' do

    before :each do
      @data = {foo: 5}
    end

    it "returns true if the value passed (operand) is less than the value in the data set" do
      # 5 < 40
      expect(Rool::LessThan.new(:foo, 40).process(@data)).to eq(true)
    end
    it "returns message if the value passed is equal to the value in the data set" do
      expect(Rool::LessThan.new(:foo, 5).process(@data)).to eq("operand is greater than or equal to value in data set")
    end
    it "returns message if the operand is greater than the value in the data set" do
      # 5 > -30
      expect(Rool::LessThan.new(:foo, -30).process(@data)).to eq("operand is greater than or equal to value in data set")
    end
    it "returns message if the value passed does not respond to the < operator" do
      @data = {foo: ['a','b']}
      expect(Rool::LessThan.new(:foo, 1).process(@data)).to eq("operand is not an integer or float.")
    end
  end
end
