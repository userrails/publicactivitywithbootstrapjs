class ArticlesController < ApplicationController
def new
 @article = Article.new
end

def create
 @article = Article.new(params[:article])
 if @article.save
   @article.create_activity :commented_on
   redirect_to articles_path
 else
   redirect_to '/'
 end
end

def index
 @articles = Article.all
end

def show
 @article = Article.find(params[:id])
end

end