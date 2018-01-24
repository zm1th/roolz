describe "Rool::Blank" do
  before :each do
    @data = {
      empty_string: ' ',
      nil_sym: nil,
      empty_array: [],
      empty_hash: {},
      fizz: 'I am not empty.'

    }
  end


  describe '#process' do
    it 'returns true if the datakeys value is nil' do
      expect(Rool::Blank.new(:nil_sym).process(@data)).to be(true)
    end
    it 'returns true if the datakeys value is an empty string' do
      expect(Rool::Blank.new(:empty_string).process(@data)).to be(true)
    end
    it 'returns true if the datakeys value an empty hash' do
      expect(Rool::Blank.new(:empty_hash).process(@data)).to be(true)
    end
    it 'returns true if the datakeys value an empty array' do
      expect(Rool::Blank.new(:empty_array).process(@data)).to be(true)
    end
    it 'returns false if the datakeys value is not nil or empty' do
      expect(Rool::Blank.new(:fizz).process(@data)).to be(false)
    end
  end
end