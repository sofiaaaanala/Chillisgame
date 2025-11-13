import wollok.game.*
import objects.*
import perros.*
import globo.*
import comidas.*
import contador.*

object juego{
	
	const property perros = [
		new Perro(nombre = "nala") , 
		new Perro(nombre = "berna"), 
		new Perro(nombre = "moro"), 
		new Perro(nombre = "chilli")
	]

	const property comidas = [
			new Comida(nombre = "pizza", posicionInicial = game.at(1,1)),
			new Comida(nombre = "hamburguesa", posicionInicial = game.at(3,1)),
			new ComidaPicante(nombre = "aji", posicionInicial = game.at(5,1))
	]

	var property nuevoPerro = null

	
	method dibujarComidas(){

		comidas.forEach { comida =>
			
			 game.addVisual(comida)			 
		}
		
	}
	
	method PantallaInicial(){
		game.addVisual(pantallaInicial)
	}
	
	method comidaAleatoria(){
		return comidas.anyOne()
	}
	
	method perroAleatorio(){
		const perroSorteado = perros.anyOne()
		
		// probabilidad de que el perro se grosero (20)
		if (  0.randomUpTo(100) < 20 ){
			perroSorteado.esGrosero(true)
		}
		else{
			perroSorteado.esGrosero(false)
		}
		return perroSorteado
		
	}
			
	method agregarNuevoPerro(){
	
		nuevoPerro = self.perroAleatorio()
	
		game.addVisual( nuevoPerro )
		
		nuevoPerro.pedir()
			
	}

	method iniciar(){
		  game.removeVisual(pantallaInicial)
		  
		  self.dibujarComidas()

		  self.agregarNuevoPerro()
		  
		  game.addVisual(boton)
		  
		  game.addVisual(contador)
		  game.addVisual(timer)
		  
		  game.onTick(1000, "timer",{
		  	 timer.incrementarTiempo()
		  })
	
		  game.addVisualCharacter(cursor)
		  
		 
		  		
    }
 
	 	
	 	
}



	

	
