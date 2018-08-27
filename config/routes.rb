Rails.application.routes.draw do
  resources :legal_cases
  resources :clients
  patch 'clients/:id/edit', to: 'clients#edit'

  root to: 'pages#index' do
    get 'clients'
    get 'legal_cases'
  end


  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 devise_scope :user do
   get 'login', to: 'devise/sessions#new'
 end

 devise_scope :user do
   get 'signup', to: 'devise/registrations#new'
 end


# get '/button', to: 'your_controller_name#button` , as: 'button'




end
