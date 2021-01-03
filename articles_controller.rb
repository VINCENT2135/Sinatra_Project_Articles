class ArticlesController < ApplicationController

       
  get "/articles" do
    @articles = Article.all
    erb :'articles/index' 
  end 

end 