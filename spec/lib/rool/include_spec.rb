describe "Rool::Include" do
  describe '#process' do

    before :each do
      @data = {
        foo: 'bar',
        fizz: 'Buzz',
        cool_number: 262,
        gettin_jiggy: ['wit', 'It'],
        did_you_know: 'That Nas wrote that song?'
      }
    end

    it "returns true if the operand matches one of the data key values" do
      expect(Rool::Include.new(:foo, 'bar').process(@data)).to eq(true)
    end
    it "returns false if the operand is not included in the data key set" do
      expect(Rool::Include.new(:fizz, 'Texas').process(@data)).to eq(false)
    end
    it "returns false if the operand is nil" do
      expect(Rool::Include.new(:fizz, nil).process(@data)).to eq(false)
    end
    
  end
end