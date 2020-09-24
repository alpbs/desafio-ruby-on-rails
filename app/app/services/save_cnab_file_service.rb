class SaveCnabFileService
  def initialize(file, parser=ParserLineService)
    @file = file
    @parser = parser
  end

  def execute
    save
  end


  private

  def save
    @file.split("\n").each { |line|
      @parser.new(line).execute
    }
  end
end

