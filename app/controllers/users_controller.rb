class UsersController < ApplicationController

  get '/users' do 
    erb :index
  end 
  
  post '/start' do 
    # binding.pry 
    if params[:choice] == "Login"
      redirect to '/login'
    elsif params[:choice] == "Sign Up"
      redirect to '/signup'
      
    end 
  end 

  get '/login' do 
    erb :'users/login'
  end 
  
  get '/signup' do
    # binding.pry
    erb :'users/create_user'
  end 
  
  post '/signup' do 
    @a = "Invalid credentials. Please try again."
    user = User.new(:username => params[:username], :password => params[:password])
		if user.save 
		  redirect "/login"
		else 
		  redirect "/signup"
		end 
  end 
  
  post '/login' do 
    
  end 
  
end

