Rails.application.routes.draw do
  namespace :api do 
    resources :users do 
      resources :languages do
        resources :messages 
      end
    end
    resources :users do 
      resources :languages do
        resources :proficiencies  
      end
    end
  end 
end
