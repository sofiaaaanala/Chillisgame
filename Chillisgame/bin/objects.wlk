import wollok.game.*
import chillis.*
import perros.*
import comidas.*


object cursor{
	var _position = game.origin()
	var property comidaActual = null
	
	method position() = _position
	
	method position(nuevaPosicion){
		_position = nuevaPosicion
		
		self.actualizarPosicionComida()
	}
	
	
	method image() = "pata.png"
	
	method tomarComida(comida){
		comidaActual =comida
		comida.estaSeleccionada(true)
	
	}
	
	method soltarComida(){
		if ( self.comidaActual() != null){
			console.println("Dejar comida " + self.comidaActual().nombre() + " " + juego.nuevoPerro().comidaDeseada().nombre())		
			
			self.comidaActual().volverAlInicio()
			
			comidaActual = null
			
		//	juego.nuevoPerro().irse()
		//	juego.agregarNuevoPerro()
			
			
		}
	}
	
	method actualizarPosicionComida(){
		if ( self.comidaActual() !=  null){
			self.comidaActual().moverA(self.position())
		}
	}
	
	method intentarTomarComida(){
		if ( self.comidaActual() == null)
		{
			
			const elementosAca = game.getObjectsIn(self.position())
		
			elementosAca.forEach { elemento => 
				if ( juego.comidas().contains(elemento) ){
					self.tomarComida(elemento)
				}
			}
		}
	}

	
}

object boton{
	const position = game.at(5,2)
	method image() = "boton.png"
	method position() = position
	method echar() {

			juego.nuevoPerro().irse()
			juego.agregarNuevoPerro()
	}
}

object pantallaInicial{
	const position = game.at(1,2)
	method image() = "start.jpg"
	method position() = position
}
