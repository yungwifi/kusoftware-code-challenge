Rails.application.routes.draw do
namespace :api do 
  resources :languages
  resources :users do
    resources :messages 
    resources :proficiencies 
    end
  end
end
