class TweetsController < ApplicationController
  
  get '/tweets:id' do
    if logged_in?
      @tweets = Tweet.all
      erb :'tweets/tweets'
    else 
      erb :'users/login'
    end 
  end 

end
