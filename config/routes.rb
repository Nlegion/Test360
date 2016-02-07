Rails.application.routes.draw do
  devise_for :users
  root 'tests#index' 
  resources :tests do
    resources :questions, except: [:index, :show]
    resources :answers do
      get 'new_answer', on: :collection
      post 'save_answers', on: :collection
    end
    resources :results
    resources :groups
  end
end
