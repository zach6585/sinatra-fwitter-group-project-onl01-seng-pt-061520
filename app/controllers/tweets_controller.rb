class TweetsController < ApplicationController

  get '/tweets' do
    # binding.pry
    if logged_in?
      @tweets = Tweet.all

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

  delete '/tweets/:id' do 
    # binding.pry

    if params[:choice] == "No, take me back"
      redirect to '/tweets/:id'
    else 