class UsersController <  ApplicationController 
    
   
    #index
    get "/users" do
        @users=User.all
        erb :'users/index'
    end

    get '/login' do
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] =  @user.id
            redirect 'articles'
        else
            @error ="Sorry either username or password is incorrect"
            erb :'users/login'
      
        erb :'users/login'
        end 
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