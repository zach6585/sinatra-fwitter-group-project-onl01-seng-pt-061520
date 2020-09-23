class TweetsController < ApplicationController
  
  get '/tweets/:id' do
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
    erb :'tweets/edit_tweet'
  end 
    
  
  get '/new' do 
    erb :'tweets/new'
  end 
  
  get '/delete' do
    erb :"tweets/delete"
  end 
  
  get '/logout' do 
    redirect to 'users/logout'
  end 
  
  delete '/' do 
  end 
  

end
