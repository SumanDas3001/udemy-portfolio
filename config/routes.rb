Rails.application.routes.draw do
  devise_for :users
  resources :own_portfolios, except: [:show]
  get 'angular-items', to: 'own_portfolios#angular'
  get 'portfolio/:id', to: 'own_portfolios#show', as: 'portfolio_show' # custom portfolio show path
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status # This routes is for draft or published post
    end
  end
  root "pages#home"
end
