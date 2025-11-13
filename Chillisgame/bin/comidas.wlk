import wollok.game.*
import objects.*

class Comida {
	const property nombre
	const posicionInicial
	var property position = posicionInicial
	var property estaSeleccionada = false
	
	method image() = nombre + ".png"
	

	method ser_seleccionada(){
		estaSeleccionada = true
		cursor.tomarComida(self)
	}
	
	method deseleccionar(){
		estaSeleccionada = false
	}
	
	method moverA(nuevaPos){
		position = nuevaPos
	}
	
	method volverAlInicio(){
		position = posicionInicial
	}

	method esPicante() = false
}


class ComidaPicante inherits Comida {
	override method esPicante() = true
}

