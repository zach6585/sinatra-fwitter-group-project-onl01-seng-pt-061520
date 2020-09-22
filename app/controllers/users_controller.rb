class UsersController < ApplicationController

  get '/users' do 
    erb :index
  end 
  
  post '/start' do 
    # binding.pry 
    if params[:choice] == "Login"
      erb :login 
    elsif params[:choice] == "Sign Up"
      erb :create_user 
    end 
  end 

  post '/login' do 
  end 
  
  post '/signup' do 
  end 
end
