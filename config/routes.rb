Rails.application.routes.draw do
  mount ContentfulRails::Engine => '/marley'

  root 'recipes#index'

  resources :recipes, only: %i[index show]
end
