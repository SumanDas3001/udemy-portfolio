Rails.application.routes.draw do
  resources :own_portfolios, except: [:show]
  get 'portfolio/:id', to: 'own_portfolios#show', as: 'portfolio_show' # custom portfolio show path
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  root "pages#home"
end
