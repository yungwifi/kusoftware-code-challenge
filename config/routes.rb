Rails.application.routes.draw do
namespace :api do 
  resources :users do
    resources :messages 
    resources :proficiencies 
    end
  end
end
