
describe "Rool::Equal" do
  describe '#process' do

    before :each do
      @data = {foo: 10}
    end

    it "returns true if the value passed in is equal to the value in the data set" do
      expect(Rool::Equal.new(:foo, 10).process(@data)).to eq(true)
    end
    it "returns false if the value passed is not equal to the value in the data set" do
      expect(Rool::Equal.new(:foo, 5).process(@data)).to eq(false)
    end
    
  end
end