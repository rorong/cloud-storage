Rails.application.routes.draw do

  post 'home/upload_image'
  post 'home/upload_document'
  post 'home/upload_media'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
