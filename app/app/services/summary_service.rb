class SummaryService
  def initialize(records)
    @records = records
    @summary = {}
  end


  def execute
    summary
  end


  private


  def summary
    @records.all.each { |line|
      if @summary[line.store].blank? 
        @summary[line.store] = { 
          lines: [line],
          balance: line.total
        }
      else
        @summary[line.store][:lines] << line
        @summary[line.store][:balance] += line.total
      end
    }
    @summary
  end

end
