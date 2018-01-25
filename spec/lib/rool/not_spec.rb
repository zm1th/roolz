
describe "Rool::Not" do
  describe '#process' do
    it 'raises an exception if more than one child rule is passed to the constructor' do
      expect{Rool::Not.new(Rool::False.new, Rool::True.new).process}.to raise_exception("Only one child rule may be passed")
    end
    it 'returns true if the child rules process to false' do
      expect(Rool::Not.new(Rool::False.new).process).to be(true)
    end
    it 'returns false if the child rules process to true' do
      expect(Rool::Not.new(Rool::True.new).process).to be(false)
    end
  end
end
