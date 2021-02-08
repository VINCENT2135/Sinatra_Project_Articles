class ArticleController < ApplicationController
 

       # login required for everything except show articles

       before do
      
        if request.request_method == "GET"  && request.path_info == "/articles"
           # ok 
        else
            require_login
        end
       end
 
 
       #index
       get "/articles" do
         @articles=Article.all.reverse
         erb :'articles/index'
       end
     
       #create ( from #new )
       post "/articles" do
         @article=Article.new(title: params[:title], description: params[:description] ,user_id: current_user.id )
       
         if @article.save
            redirect to("/articles/#{@article.id}" )
         else
            @error = @article.errors.full_messages
            erb :'articles/new'
         end  
       end
 
       delete "/articles/:id" do
         @article = Article.find(params[:id])
         
         @article.destroy
         redirect '/articles'
       end 
     
      
       #edit
       get "/articles/:id/edit" do
         @article=Article.find_by(id: params[:id])
       
         if @article && same_user(@article)
           erb :'articles/edit'
         else
           redirect '/articles'
         end
       end
     
       #patch - ( for #edit update)
       patch '/articles/:id' do
         @article=Article.find(params[:id])  
         @article=Article.update(@article.id,title: params[:title], description: params[:description] )
         if @article.valid?
            redirect to("/articles/#{@article.id}")
         else
           @error = @article.errors.full_messages
           erb :'articles/edit'
         end
       end
      
       #new
       get "/articles/new" do
         erb :'articles/new'
       end
      
       #delete
      
       #show
       get "/articles/:id" do
         @article=Article.find_by(id: params[:id])
         if @article
            erb :'articles/show'
         else
           redirect '/articles'
         end
       end 
 end