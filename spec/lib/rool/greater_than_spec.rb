
describe "Rool::GreaterThan" do
  describe '#process' do

    before :each do
      @data = {foo: 5}
    end

    it "returns true if the value passed is greater than the value in the data set" do
      expect(Rool::GreaterThan.new(:foo, 10).process(@data)).to eq(true)
    end
    it "returns message if the value passed is equal to the value in the data set" do
      expect(Rool::GreaterThan.new(:foo, 5).process(@data)).to eq("operand is less than than value in data set")
    end
    it "returns message if the value passed is less than the value in the data set" do
      expect(Rool::GreaterThan.new(:foo, 1).process(@data)).to eq("operand is less than than value in data set")
    end
    it "returns message if the value passed does not respond to the > operator" do
      @data = {foo: ['a','b']}
      expect(Rool::GreaterThan.new(:foo, 1).process(@data)).to eq("operand is not an integer or float.")
    end
  end
end
