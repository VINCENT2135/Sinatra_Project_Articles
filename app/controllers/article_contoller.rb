class ArticleController < ApplicationController
 
  #Read 
#index 


get "/articles" do
     
      erb :'articles/index'
    
    end


   
    get '/articles/new' do 
      erb :'/articles/new' 
  
    end 

 

end 
 
    
      
