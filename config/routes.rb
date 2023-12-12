Rails.application.routes.draw do
  root "lists#index"

  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
    resources :reviews
  end

  resources :bookmarks, only: %i[destroy]
end
