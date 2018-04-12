Rails.application.routes.draw do
  resources :videos
  resources :posts
  get 'static_pages/videos'

  get 'static_pages/landing_page'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/videos'

  root 'static_pages#landing_page'

  post 'static_pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
