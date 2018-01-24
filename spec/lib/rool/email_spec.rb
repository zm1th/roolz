describe "Rool::Email" do
  before :each do
    @data = {
      foo: 'ryarthur262@gmail.com',
      fizz: 'Buzz',
      cool_number: 262
    }
  end


  describe '#process' do
    it 'returns true if the datakeys value is probably an e-mail address' do
      expect(Rool::Email.new(:foo).process(@data)).to be(true)
    end
    it 'returns false if the datakeys value is probably not an e-mail address' do
      expect(Rool::Email.new(:fizz).process(@data)).to be(false)
    end
  end
end
