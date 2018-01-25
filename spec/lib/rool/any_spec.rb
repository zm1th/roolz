
describe "Rool::Any" do
  describe '#process' do

  	## Expect True

    it 'returns true if any of the children rules are true for the dataset' do
      expect(Rool::Any.new(Rool::False.new, Rool::True.new).process).to be(true)
    end

    ## Expect False
    
    it 'returns false if all of the children rules are false for the dataset' do
      expect(Rool::Any.new(Rool::False.new, Rool::False.new).process).to be(false)
    end
  end
end
