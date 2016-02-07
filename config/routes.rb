Rails.application.routes.draw do
  devise_for :users
  root 'tests#index' 
  resources :tests do
    resources :questions, except: [:index, :show]
    resources :answers do
      get 'get_answ', on: :collection
      post 'post_answ', on: :collection
    end
    resources :results
    resources :groups
  end
end
