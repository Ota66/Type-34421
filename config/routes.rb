Rails.application.routes.draw do
  get 'scores/index'
  root to: "scores#index"
end
