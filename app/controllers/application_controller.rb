require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true #allows patch and delete requests
    enable :sessions 
    set :session_secret, "whatevs"
  end




  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end




get "/" do
  erb :welcome
end
end 