class ArticlesController < ApplicationController
  #GET /articles
  def index
    @articles = Articles.all #Todos los registros del modelo bd
  end
end