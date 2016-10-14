class Article < ActiveRecord::Base
  # Se crea el modelo con el generador rails g model Article
  # tittle:string body:text visits_count:integer
   
  #Validar el titulo
  validates :tittle, presence: true
  validates :body, presence: true
end