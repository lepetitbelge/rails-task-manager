Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get ALL
  get 'tasks', to: 'tasks#index'

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # Create one task(needs two steps)
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # get ONE
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
