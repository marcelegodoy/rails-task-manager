Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  # Pagina individual
  get 'tasks/new', to: 'tasks#new'
  # Nova tasks
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # Form para preencher
  post 'tasks', to: 'tasks#create'
  # Show edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'tasks_edit'
  # Update the task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete the task
  delete 'tasks/:id', to: 'tasks#destroy'
end
