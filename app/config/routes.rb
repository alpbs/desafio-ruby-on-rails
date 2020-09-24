Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'cnabs#show'

  resource :cnab, format: :html, only: [:show, :create]
end
