Rails.application.routes.draw do
  get 'noodles', to: 'noodles#index'
  get 'new', to: 'noodles#new'
  post 'new', to: 'noodles#create'
end
