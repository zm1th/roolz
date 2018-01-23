
describe "Rool::All" do
  describe '#process' do
    it 'returns true if all the children rules are true for the dataset' do
      expect(Rool::All.new(Rool::True.new, Rool::True.new).process).to be(true)
    end
    it 'returns false if any of the children rules are false for the dataset' do
      expect(Rool::All.new(Rool::False.new, Rool::True.new).process).to be(false)
    end
  end
end
