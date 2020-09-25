class TweetsController < ApplicationController
  
  get '/tweets' do
    # binding.pry
    if logged_in?
      @tweets = Tweet.all
      @user = current_user
      @users = User.all
      erb :'tweets/show_tweet'
    else 
      erb :'users/login'
    end 
  end 
  
  get '/tweets/:id/edit' do 
    # binding.pry
    @tweet = Tweet.find_by_id(params[:id])
    erb :'tweets/edit_tweet'
  end 
  
  patch '/tweets/:id/' do 
    # binding.pry
    @tweet = Tweet.find_by_id(params[:id])
    if !params[:content].empty?
      
      @tweet.content = params[:content] 
      @tweet.save 
      redirect to "/tweets"
    else 
    end 
    
  end 
    
  
  get '/new' do 
    erb :'tweets/new'
  end 
  
  post '/new' do 
  end 
  
  get '/delete/:id' do
    # binding.pry
    @tweet = Tweet.find_by_id(params[:id])
    erb :"tweets/delete"
  end 
  
  get '/logout' do 
    redirect to 'users/logout'
  end 
  
  get '/deleted' do 
    @user = current_user
    erb :deleted
  end
  
  delete '/tweets/:id' do 
    # binding.pry

    if params[:choice] == "No, take me back"
      redirect to '/tweets/:id'
    else 
      @tweet = Tweet.find_by_id(params[:id])
      @tweet.delete 
      redirect to '/deleted'
    end 
  end 
  

end
