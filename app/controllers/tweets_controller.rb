class TweetsController < ApplicationController
  
  get '/tweets:id' do 
    if logged_in?
      erb :'tweets/tweets'
    else 
      erb :'users/login'
    end 
  end 

end
