class TweetsController < ApplicationController
  
  get '/tweets' do
    # binding.pry
    if logged_in?
      @tweets = Tweet.all
      @user = current_user
      erb :'tweets/show_tweet'
    else 
      erb :'users/login'
    end 
  end 
  
  get 'tweets/:id/edit' do 
  end 
    
  
  get '/new' do 
    erb :'tweets/new'
  end 
  
  get '/delete' do
    erb :"tweets/delete"
  end 
  
  get '/logout' do 
    erb :"users/logout"
    
  end 
  

end
