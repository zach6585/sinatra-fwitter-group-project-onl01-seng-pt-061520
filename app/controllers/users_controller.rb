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
    user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
		if user.save 
		  redirect "/login"
		else 
		  erb :'users/create_user'
		end 
  end 
  
  post '/login' do 
    @a = "Invalid credentials. Please try again."
    user = User.find_by(:username => params[:username])
		if user && user.authenticate(params[:password])
		  session[:user_id] = user.id
		  redirect to '/'
		else 
		  erb :'users/login'
		end 
  end 
  
  
  
end

