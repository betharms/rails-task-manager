Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # reads the title of all tasks:
  get 'tasks', to: 'tasks#index'
  # creates the new form to generate another task
  get 'tasks/new', to: 'tasks#new'
  # creates a new task
  post 'tasks', to: 'tasks#create'
  # reads the name and description of all tasks
  get 'tasks/:id', to: 'tasks#show', as: :task
  # getting the form to update a task
  get 'tasks/:id/edit', to: 'tasks#edit'
  #patch the form
  patch 'tasks/:id', to: 'tasks#update'
  # delete an entry
  delete 'tasks/:id', to: 'tasks#destroy'
end
