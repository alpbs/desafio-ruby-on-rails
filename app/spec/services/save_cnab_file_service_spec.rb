RSpec.describe SaveCnabFileService do
  
  subject { SaveCnabFileService.new }

  it "Call parser line service to save data on database" do
    file = "3201903010000014200096206760174753****3153153453JOÃO MACEDO   BAR DO JOÃO       \n"
    mock_instance = double('Instance')
    allow(mock_instance).to receive(:execute)
    mock_class = double('SaveCnabFileService')
    allow(mock_class).to receive(:new) { mock_instance }

    expect(mock_instance).to receive(:execute).once
    cnab = SaveCnabFileService.new file, mock_class
    cnab.execute
  end
  

 
end
