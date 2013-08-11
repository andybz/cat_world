CatWorld::Application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :cats, only: [:index, :create]
    end
  end
end
