Rails.application.routes.draw do
  root 'noodles#home'
  get 'home', to: 'noodles#home'
  get 'new', to: 'noodles#new'
  post 'new', to: 'noodles#create'
  get 'noodles', to: 'noodles#index'
  get 'noodles/:id', to: 'noodles#show'
end
