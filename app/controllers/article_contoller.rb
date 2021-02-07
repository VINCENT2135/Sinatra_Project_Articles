class ArticleController < ApplicationController
 
  #Read 
#index 


    get "/articles" do
     
      erb :'articles/index'
    
    end


   
    get '/articles/new' do 
      erb :'/articles/new' 
  
    end 


    get "/articles/:id" do 
      # @article = Article.find(params["id"])
       erb :'articles/show'
 end



    post '/articles' do 
      # article = Article.new(params) 
      #if article.save # direct user to articles index
        redirect '/articles'
          #else
        erb :'/articles/new' #render the form
    end 
    
    #UPDATE 
 
   get "/articles/:id/edit" do 
     # @article = Article.find(params["id"])
        erb :'/articles/edit'
    end


  patch '/articles/:id' do 
      @article = Article.find(params[:id])
      erb :'articles/edit'
  end

end 
 
    
      
