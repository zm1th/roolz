
describe "Rool::Regex" do
  describe '#process' do

    before :each do
      @data = {
        email: 'nate@chargeback.com',
        name: 'Nate',
        salary: 'ONE MILLION DOLLARS',
        favorite_books: ['Anathem', 'Cosmos']
      }
    end

    it "returns true if the operand matches to the data in the data set" do
      expect(Rool::Regex.new(:email, /chargeback/i).process(@data)).to eq(true)
    end
    it "returns message if the operand does not match the value in the data set" do
      expect(Rool::Regex.new(:name, /Arnold\s?Schwarzenegger/i).process(@data)).to eq("there is no match in the dataset")
    end
    it "returns message if the operand or dataset value does not work with regular expressions" do
      expect(Rool::Regex.new(:name, ).process(@data)).to eq("there is no match in the dataset")
    end
    it "returns message if the value passed does not respond to the < operator" do
      expect(Rool::Regex.new(:favorite_books, /anathem/i).process(@data)).to eq("there is no match in the dataset")
    end
  end
end
