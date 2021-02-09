
class UsersController <  ApplicationController 
    
  #index
  get "/users" do
      @users=User.all
      erb :'users/index'
  end
  
   #edit
   get "/users/:id/edit" do
  
    @user=User.find(params[:id])

    if @user 
      erb :'users/edit'
    else
      redirect '/articles'
    end
  end

  #patch - ( for #edit update)
  patch '/users/:id' do
    @user=User.find(params[:id])  
    @user=User.update(@user.id,username: params[:username],password: params[:password])
    if @user.valid?
       redirect to("/articles")
    else
      @error = @user.errors.full_messages
      erb :'users/edit'
    end
  end

  get '/signup' do
      erb :'users/signup'
  end
  
  post '/signup' do
      @user = User.new(params)
      if @user.save
          session[:user_id]= @user.id
          redirect 'articles'
      else
          @error=@user.errors.full_messages
          erb :'users/signup'
      end
  end

  get '/login' do
     erb :'users/login'
  end

  post '/login' do
      @user = User.find_by(username:params[:username])
      if @user && @user.authenticate(params[:password])
          session[:user_id] =  @user.id
          redirect 'articles'
      else
          @error ="Sorry either username or password is incorrect"
          erb :'users/login'
      end        
  end

  get '/logout' do
      session.clear if session
      redirect '/'
  end

end
