Rails.application.routes.draw do
  # 1. Listar todas as tarefas
  get "tasks", to: "tasks#index"

  # 2. Criar uma tarefa (O 'new' deve vir antes do 'show')
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  # 3. Ver uma tarefa específica
  get "tasks/:id", to: "tasks#show", as: :task

  # 4. Editar uma tarefa
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # 5. Eliminar uma tarefa
  delete "tasks/:id", to: "tasks#destroy"
end
