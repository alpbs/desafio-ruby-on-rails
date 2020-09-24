FactoryBot.define do
  factory :cnab do
    operation_type { "aluguel" }
    operation_at { "2020-09-23" }
    value { "9.99" }
    cpf { "09799099699" }
    card { "334455***809" }
    hour { 12345678 }
    owner { "Andre" }
    store { "Loja teste" }
  end
end
