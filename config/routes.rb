Rails.application.routes.draw do
  get 'locations/index'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sitemap', to: 'pages#sitemap', as: :sitemap
  get 'menu', to: 'pages#menu', as: :menu
  get 'locations', to: 'pages#locations', as: :locations
end
