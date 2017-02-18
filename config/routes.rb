Rails.application.routes.draw do
  resources :dictionaries do
    resources :words
  end
  root :to => redirect('/dictionaries')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
