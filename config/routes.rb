Rails.application.routes.draw do

  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show'
  # get 'restaurants/:id/review', to: 'restaurants#new_review'

  resources :restaurants, only: [:create, :index, :show, :new] do
      resources :reviews, only: [:new, :create]
      # get 'review', to: 'restaurants#new_review'
      # post  to: 'restaurants#create_review'
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
