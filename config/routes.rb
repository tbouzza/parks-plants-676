Rails.application.routes.draw do
  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: :destroy

  resources :plants, only: [] do
    resources :plant_tags, only: [:new, :create]
  end
end
