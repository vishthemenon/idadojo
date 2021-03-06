Ninja::Application.routes.draw do
    root to: "pages#home"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  match 'home' => 'pages#home', as: :pages_home
  match 'contact' => 'pages#contact', as: :pages_contact 
  match 'myteam' => 'pages#myteam', as: :pages_myteam
  match 'progress' => 'pages#myteamprogress', as: :pages_myteamprogress
  match 'leaderboard' => 'pages#leaderboard', as: :pages_leaderboard  
  


  devise_for :users
  ActiveAdmin.routes(self)
    match '*code' => 'pages#checkcode'

end
