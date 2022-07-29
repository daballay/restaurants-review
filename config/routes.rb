Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    #para review vamos a necesitar:
    # get restaurants/:restaurant_id/reviews/new
    # post restaurant/:restaurant_id/review
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[destroy]
end
