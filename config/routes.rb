Rails.application.routes.draw do
  resources :movies
  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
}
resources :movies do
  collection do
    get 'search'
  end
  resources :reviews, except: [:show, :index]
end

root 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
