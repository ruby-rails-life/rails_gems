class ArticlesController < ApplicationController
  def index
    #@articles = Article.all
    #@articles = Article.where.has { title =~ 'title1%' }
    @articles = Article.where.has { title =~ 'title1%' }.ordering { title.desc }
    #@articles = Article.joins(:comments).where.has { comments.commenter =~ 'comment1%' }
    #@articles = Article.joins(:comments).where.has { comments.sift(:name_contains, 'comment1') }
  end

  def new
    @article = Article.new
  end
 
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end


  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:id])
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :text, :picture)
  end

end
