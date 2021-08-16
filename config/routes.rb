Rails.application.routes.draw do
  root 'noodles#home'
  get 'home', to: 'noodles#home', as: 'home'
  get 'noodles', to: 'noodles#index', as: 'noodles'
  get 'new', to: 'noodles#new', as: 'new_noodle'
  post 'new', to: 'noodles#create', as: 'create_noodle'
  get 'noodles/:id', to: 'noodles#show', as: 'noodle'
  get 'noodles/:id/edit', to: 'noodles#edit', as: 'edit_noodle'
  patch 'noodles/:id', to: 'noodles#update', as: 'update_noodle'
  delete 'noodles/:id', to: 'noodles#destroy', as: 'destroy_noodle'
end
