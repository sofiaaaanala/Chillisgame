import wollok.game.*
import chillis.*
import objects.*
import globo.*
import contador.*


class Perro{
	const nombre
	const position = game.center()
	var property comidaDeseada = null
	var property esGrosero = false
	const posicionGlobo = game.at(self.position().x(), self.position().y() + 4)
	
	var globo = null
	
	var property estado = "normal"
	method position() = position
	method image() = nombre + estado + ".png"
	
	
	
    //pedir = elegir una comida de la lista de comidas aleatoria
    method pedir(){ 
    	if (esGrosero) {
    		 globo = new Globo(mensaje = "insulto", position = posicionGlobo )
             game.addVisual(globo)
    	}
    	else{
    		self.comidaDeseada( juego.comidaAleatoria() )
        
        	globo = new Globo(mensaje = comidaDeseada.nombre(), position = posicionGlobo)
        
        	game.addVisual(globo)
        
      
       		game.onCollideDo(globo, { elemento =>
       		if (juego.comidas().contains(elemento)){
       			self.recibirComida(cursor.comidaActual().nombre())
       			cursor.soltarComida() }
        	})
        }
    
      }
   
    
    method irse(){
    	game.removeVisual(globo)
    	estado = "normal"
       return game.removeVisual(self)
    }
    
    
     method recibirComida(comida){
     	console.println(comida)
     	if (comida == comidaDeseada.nombre()){
     		contador.incrementar_puntos()
     		game.sound("miam.mp3").play()
     		self.comer()
     		game.say(self, "gracias")
     		
     	}
     	else{
     		estado = "enojo"
     		game.sound("no.mp3").play()
     		contador.decrementar_puntos()
            game.say(self, "Yo no pedi esto")
            
     	}
     	game.schedule(2000, { self.irse() juego.agregarNuevoPerro() })
     }
     
     method comer (){
     	if(comidaDeseada.esPicante()){
     		estado = "rojo"
     	}
     	else{
     		estado = "feliz"
     	}
     	
     }
 }
   




