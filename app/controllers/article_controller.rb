class ArticleController < ApplicationController
 
  #Read 
#index 


    get "/articles" do
     @articles = Article.all
      erb :'articles/index'
    
    end


   
    get '/articles/new' do 
      erb :'/articles/new' 
  
    end 

 
    get "/articles/:id/edit" do 
      @articles = Article.all
        erb :'/articles/edit'
    end


    get "/articles/:id" do 
       @articles = Article.find(id: params[:id])
       erb :'articles/show'
 end
end




    post '/articles' do 
      # article = Article.new(params) 
      #if article.save # direct user to articles index
        redirect '/articles'
          #else
        erb :'/articles/new' #render the form
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

