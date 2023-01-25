Rails.application.routes.draw do
  get 'urls/new', to: 'urls#new', as: 'new_url'
  post 'urls', to: 'urls#create', as: 'urls'
  get 'urls/:id', to: 'urls#show', as: 'url'

  root 'urls#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
