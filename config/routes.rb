Feedback::Engine.routes.draw do
  root to: 'feedback_infos#index'
  resources :feedback_infos
end
