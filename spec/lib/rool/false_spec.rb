
describe "Rool::False" do
  describe '#process' do
    it 'always returns false' do
      expect(Rool::False.new.process).to eq(false)
    end
  end
end
