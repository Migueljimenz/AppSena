Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :users

  root to: "dashboard#index"

  resources :areas do
    resources :programas, module: :areas
  end

  resources :programas do
    resources :cursos, module: :programas
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
