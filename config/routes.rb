Rails.application.routes.draw do
namespace :api do 
  resources :users
  resources :languages do
      resources :messages 
      resources :proficiencies 
    end
  end
end
