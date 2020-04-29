class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
  end

  def index
    render json: Article.all
  end


  def create
    params.permit!
    @article = Article.new(params.require(:articles))
    @article.save
  end
  private
  def articles_param
    params.require(:articles).permit(:title, :body)
  end
end
