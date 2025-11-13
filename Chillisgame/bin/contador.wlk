import wollok.game.*
import perros.*
import chillis.*

object contador {
	   const position = game.at(1,0)
	   var property puntos = 0
       method position() = position
       method text() = "Puntos: " + puntos	
	   method incrementar_puntos(){
	   	puntos +=1
	   }
	   method decrementar_puntos(){
	   	puntos -=1
	   }
	
}

object timer{
	 const position = game.at(4,0)
	 var property tiempo = 0
	 
       method position() = position
    
	   method incrementarTiempo(){
	   	 tiempo +=1
	     }
method text() = "Tiempo: " + tiempo
	  
	
}

