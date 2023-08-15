Rails.application.routes.draw do
  get '/tasks', to: 'tasks#tasks'
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id', to: 'tasks#task', as: :task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  delete '/tasks/:id', to: 'tasks#delete'
end
