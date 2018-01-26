
describe "Rool::All" do
  describe '#process' do
    it 'returns true if all the children rules are true for the dataset' do
      expect(Rool::All.new(Rool::True.new, Rool::True.new).process).to be(true)
    end
    it 'returns false if any of the children rules are false for the dataset' do
      expect(Rool::All.new(Rool::False.new, Rool::True.new).process).to be(false)
    end
    it "returns an array of messages when rules fail." do
    	expect(Rool::All.new(Rool::Blank.new, Rool::Email.new, Rool::Equal.new, Rool::GreaterThan.new, Rool::Include.new, Rool::LessThan.new, Rool::Regex.new, Rool::Subset.new).message).to be_an_instance_of(Array)
    end
  end
end	
