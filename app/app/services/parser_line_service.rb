class ParserLineService

  def initialize(line, model=Cnab)
    @line = line
    @model = model
  end

  def execute
    @model.create params
  end

  private

  def params
    parsed_line = @line.split('')
    {
      operation_type: parsed_line[0].to_i, 
      operation_at: parsed_line[1..8].join, 
      value: normalize_value(parsed_line[9..18].join), 
      cpf: parsed_line[19..29].join, 
      card: parsed_line[30..41].join, 
      hour: parsed_line[42..47].join, 
      owner: clean_string(parsed_line[48..61].join), 
      store: clean_string(parsed_line[62..80].join)
    }
  end

  def normalize_value(value)
    (value.to_i / 100).to_d
  end

  def clean_string(str)
    str.strip
  end

end

