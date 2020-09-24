RSpec.describe SummaryService do
  before(:all) {
    10.times { FactoryBot.create(:cnab, store: 'Test', value: 1) }
  }

  subject { SummaryService.new(records) }
  let(:records) { Cnab.all }

  it "Return a hash with store name as keys" do
    summary = subject.execute

    expect(summary.keys).to eq ['Test']
  end

  it "Hash store have keys lines and balance" do
    summary = subject.execute

    expect(summary['Test'].keys).to eq [:lines, :balance]
  end

  it "Lines is array of Cnab instances" do
    summary = subject.execute

    expect(summary['Test'][:lines].first).to be_an_instance_of Cnab
  end


  it "Balance is a sum of operations" do
    summary = subject.execute

    expect(summary['Test'][:balance]).to eq -10
  end


 
end
