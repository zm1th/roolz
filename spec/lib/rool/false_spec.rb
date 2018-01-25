
describe "Rool::False" do
  describe '#process' do
    it 'always returns false' do
      expect(Rool::False.new.process).to eq(false)
    end

    
    it 'will have a result of false and a specific error message after .process is run' do
    	false_test = Rool::False.new
    	false_test.process
      expect(false_test).to have_attributes(result: false, message: "This method automatically returns False.")
    end
  end
end
