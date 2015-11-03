Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :pages
  end
  constraints(Spree::StaticPage) do
    get '/(*path)', to: 'categories#determine_content', as: 'static'
  end
end
