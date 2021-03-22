Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books, only: [:index, :new, :create, :show, :edit] do
    collection do
      get 'all_index'
    end
  end
end
