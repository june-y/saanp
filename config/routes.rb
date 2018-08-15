Rails.application.routes.draw do
  resources :legal_cases
  resources :clients
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'pages#index' do
   get 'clients'
   get 'legal_cases'
 end

 devise_scope :user do
   get 'login', to: 'devise/sessions#new'
 end

 devise_scope :user do
   get 'signup', to: 'devise/registrations#new'
 end


end
