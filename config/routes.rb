Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  resources :sessions

  resources :events do
    resources :comments
  end

  root 'sessions#show'

end
