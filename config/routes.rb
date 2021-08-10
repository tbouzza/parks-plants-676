Rails.application.routes.draw do
  resources :gardens, only: [:index, :show]
end
