class UsersController <  ApplicationController 
    
   
    #index
    get "/users" do
        @users=User.all
        erb :'users/index'
    end

    get '/login' do
        erb :'users/login'
     end

     get '/signup' do
        erb :'users/signup'
    end
    


     
    get "/users/:id/edit" do
   
        erb :'users/edit'

        # redirect '/articles'
     
        end
    end

    post '/login' do
        @user = User.find_by(username:params[:username])
               
    end