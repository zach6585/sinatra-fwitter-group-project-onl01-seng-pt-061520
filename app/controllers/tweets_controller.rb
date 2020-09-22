class TweetsController < ApplicationController
  
  get '/tweets' do
    binding.pry
    if logged_in?
      @tweets = Tweet.all
      @user = current_user
      erb :'tweets/tweets'
    else 
      erb :'users/login'
    end 
  end 

end
