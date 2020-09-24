class Cnab < ApplicationRecord
  enum operation_type: {
    debito: 1, 
    boleto: 2, 
    financiamento: 3, 
    credito: 4, 
    recebimento_emprestimo: 5, 
    vendas: 6, 
    recebimento_ted: 7, 
    recebimento_doc: 8, 
    aluguel: 9
  }

 def operation_id
   Cnab.operation_types[operation_type]
 end

 def total
   [2,3,9].include?(operation_id) ? -1 * value : value
 end

end
