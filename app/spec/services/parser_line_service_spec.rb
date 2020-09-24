RSpec.describe ParserLineService do
  
  subject { ParserLineService.new "3201903010000014200096206760174753****3153153453JOÃO MACEDO   BAR DO JOÃO       " }

  it "Return Cnab model" do
    cnab = subject.execute

    expect(cnab).to be_instance_of Cnab
  end
  
  it "Operation operation_type = 3" do
    cnab = subject.execute

    expect(cnab.operation_type).to eq 'financiamento'
  end
   
  it "Operation operation_at = 20190301" do
    cnab = subject.execute

    expect(cnab.operation_at.to_s).to eq Date.parse('20190301').to_s
  end
    
  it "Operation value = 142.00" do
    cnab = subject.execute

    expect(cnab.value).to eq 142.to_d
  end
     
  it "CPF to be 09620676017" do
    cnab = subject.execute

    expect(cnab.cpf).to eq '09620676017'
  end
     
  it "Card to be 4753****3153" do
    cnab = subject.execute

    expect(cnab.card).to eq '4753****3153'
  end

  it "Hour to be 153453" do
    cnab = subject.execute

    expect(cnab.hour).to eq 153453
  end
     
  it "Owner to be JOÃO MACEDO" do
    cnab = subject.execute

    expect(cnab.owner).to eq 'JOÃO MACEDO'
  end
     
  it "Store name to be BAR DO JOÃO" do
    cnab = subject.execute

    expect(cnab.store).to eq 'BAR DO JOÃO'
  end
 
 
end
