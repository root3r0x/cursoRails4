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
  
  #Guardar articulo | POST q/articles
  def create
    @article = Article.new(article_params)
    
    #Si pasa las condiciones
    if @article.save
      redirect_to Article
    else
      #Abre el formulario new
      render :new
    end  
  end
  
  #Editar
  def edit
    @article = Article.find(params[:id])
  end
  #metodos de la clase 
  private
  def article_params
    params.require(:article).permit(:tittle,:body)
  end
  
end