CatWorld::Application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :cats, except: :destroy
    end
  end
end
