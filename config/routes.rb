Rails.application.routes.draw do
  resources :own_portfolios
  # get 'pages/home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  root "pages#home"
end
