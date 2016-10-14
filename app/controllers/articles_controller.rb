class ArticlesController < ApplicationController
  #GET /articles
  def index
    @articles = Article.all #Todos los registros del modelo bd
  end
  #GET /articles/:id
  def show
    @article = Article.find(params[:id])
  end
  #Crear un nuevo articulo
  #GET /articles/new
  def new
    @article = Article.new
  end
  
  #Guardar articulo
  def create
    @article = Article.new( tittle: params[:article][:tittle],body: params[:article][:body])
    @article.save()
    redirect_to Article
  end
end