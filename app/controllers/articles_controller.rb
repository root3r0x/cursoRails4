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
end