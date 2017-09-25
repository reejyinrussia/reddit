Rails.application.routes.draw do
  root 'subs#index'
  # nested topics into the parent subs below
  resources :subs do
    resources :topics
  end

  scope 'topics/:topic_id', as: 'topic' do
    resources :comments, only: [:new, :create]
  end

  #get '/tacos/:taco_id', to: 'food_truck#tacos', as: 'tacos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
