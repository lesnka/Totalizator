Totalizator::Application.routes.draw do
  
  resources :user_bits


  #resources :line_items


  resources :bits


  resources :wallets


  #get "events/index"

  resources :events
  #get ':controller/:action/:event_id'

  #resources :posts
  resources :events do
    post :make_bit, :on => :member
  end
  
  resources :events do
      post :it_exist, :on => :member
  end

  resources :bits do
    collection do 
      post :pay_bits
    end
  end
  


resources :bits do
    collection do 
      post :pay_this_bit
    end
end



  resources :bits do
    collection do 
      post :see_balance
    end
  end

  resources :events do
    collection do 
      post :make_status_bits
    end
  end
  
  resources :events do
    collection do 
      post :cancel_status_bits
    end
  end
  devise_for :users

  root to: "home#index"


end
