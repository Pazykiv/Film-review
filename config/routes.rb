Rails.application.routes.draw do
  resources :reviews
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
end
