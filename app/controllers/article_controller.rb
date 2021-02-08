class ArticleController < ApplicationController
 
  #Read 
#index 


    get "/articles" do
     @articles = Article.all
      erb :'articles/index'
    
    end


    post '/articles' do 
      @article = Article.new(title: params[:title])
      if @article.save 
        erb :'articles/new' 
    end 
  end 
   
    get '/articles/new' do 
      erb :'/articles/new' 
  
    end 

 
    get "/articles/:id/edit" do 
      @articles = Article.all
        erb :'/articles/edit'
    end


    get "/articles/:id" do 
      @article=Article.find_by(id: params[:id])
       erb :'articles/show'
 end
end





    #UPDATE 


  patch '/articles/:id' do 
      @article = Article.find(id: params[:id])
      erb :'articles/edit'
  end

  
      
  delete "/articles/:id" do
  @article = Article.find(id: params[:id])
  
  @article.destroy
  redirect '/articles'
end 

