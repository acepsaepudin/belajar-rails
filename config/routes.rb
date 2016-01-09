Rails.application.routes.draw do
 root 'home#index'
 # route untuk artikel, kita pahami dulu untuk menggunakan resources ya
 resources :articles
 resources :tags
end
