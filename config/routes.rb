Rails.application.routes.draw do
  resources :contacts

  get '/tagged', to: "contacts#tagged", as: :tagged
end
