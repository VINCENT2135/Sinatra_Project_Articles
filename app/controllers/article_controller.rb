class ArticlesController < ApplicationController
 

   get "/articles" do
     @articles = Article.all
      erb :'articles/index'
    
    end


    post '/articles' do 
      @article = Article.new(title: params[:title])
      if @article.save 
        redirect to("/articles/#{@article.id}" )
      else
        @error = @article.errors.full_messages
        erb :'articles/new' 
    end 
  end 
   
    get '/articles/new' do 
      erb :'/articles/new' 
  
    end 

 
    get "/articles/:id/edit" do 
     @articles = Article.find_by(id: params[:id])

        erb :'/articles/edit'
      
    end


  delete "/articles/:id" do
    @article = Article.find(params[:id])
    
    @article.destroy
    redirect '/articles'
  end 


    get "/articles/:id" do 
      @article=Article.find_by(id: params[:id])
    if @article
      erb :'articles/show'
    else 
      redirect '/articles'
 end
end 
end





    #UPDATE 


  patch '/articles/:id' do 
      @article = Article.find(id: params[:id])
      @article=Article.update(@article.id,title: params[:title], author: params[:author] )
      if @article.valid?
         redirect to("/articles/#{@article.id}")
      else
        @error = @article.errors.full_messages
      
      erb :'articles/edit'
  end

  
end
