class ApplicationController < ActionController::Base
    Rails.logger.info("¡Hola desde el controlador1111!")
    def index
        if params[:saludo] == "hola"
       
        Rails.logger.info("¡Hola desde el controlador!")
        # Imprimir mensaje
        puts "¡Hola desde el controlador!"
        Rails.logger.info("¡Hola desde el controlador!")
        # Imprimir variable
        variable = "Este es un valor"
        puts variable
    
        # Imprimir datos de un modelo
        posts = Post.all
        puts posts.inspect
    
        # Otro ejemplo con p
        p "Este es otro mensaje"
    
        render plain: "¡Revisa la consola para ver la salida!"
        end
      end
end
