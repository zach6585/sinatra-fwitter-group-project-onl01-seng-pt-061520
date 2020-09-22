class TweetsController < ApplicationController
  
  get '/tweets' do 
    if logged_in?
      erb :'tweets/tweets'
    else 
      erb :'users/login'
    end 
  end 

end
