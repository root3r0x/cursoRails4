class Article < ActiveRecord::Base
  # Se crea el modelo con el generador rails g model Article
  # tittle:string body:text visits_count:integer
   
  #Validar el titulo, que el titulo sea unico
  validates :tittle, presence: true, uniqueness: true
  # Cuerpo presente, largo minimo 20 caracteres
  
  validates :body, presence: true, length: { minimum: 20}    #validates :username, format: {whith: /regex} ejemplo validacion expresion regular
 
end