class ArticlesController < ApplicationController
      
      get "/articles" do
      @articles=Article.all
      erb :'articles/index'
    end


   
    get '/articles/new' do 
      erb :'/articles/new' 
  
    end 

end
      
      
