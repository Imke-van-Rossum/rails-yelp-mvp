Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # Nested!
    resources :reviews, only: [:new, :create]
  end

  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
  # get 'restaurants/:id/chef', to: 'restaurants#chef', as: :chef_restaurant

  resources :reviews, only: :destroy
end
