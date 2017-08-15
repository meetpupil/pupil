Rails.application.routes.draw do
  get 'home' , to: 'pages#home'

  get 'about' , to: 'pages#about'

  get 'leadership' , to: 'pages#leadership'

  get 'donors' , to: 'pages#donors'

  get 'partners' , to: 'pages#partners'

  get 'team' , to: 'pages#team'

  get 'newsroom' , to: 'pages#newsroom'

  get 'jobs' , to: 'pages#jobs'

  get 'faq' , to: 'pages#faq'

  get 'support' , to: 'pages#support'

  get 'mentors' , to: 'pages#mentors'

  get '/schools/newyork' , to: 'pages#newyork'

  get '/schools/california' , to: 'pages#california'

  get 'privacy' , to: 'pages#privacy'

  get 'terms' , to: 'pages#terms'

  get 'community' , to: 'pages#community'
  
  root to: 'pages#home'
end
