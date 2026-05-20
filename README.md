Mi Proyecto Final
Chilli’s Restaurant 

Mi proyecto final será un juego interactivo “Chili 's Restaurant”. Se trata de un restaurante para perros a donde van diferentes personajes que a través de globos de diálogo piden la comida que desean, los jugadores deben seleccionar la comida pedida, en ese caso el cliente agradecerá y se irá, si le damos una comida diferente el cliente se enojara y se irá. 
También puede pasar que el cliente en vez de pedir una comida, insulte, en ese caso la única opción de avanzar sería echarlo.
En caso de que el cliente pida una comida picante, al entregárselo se pondrá rojo antes de irse.

Secuencia paso a paso

*Posibilidad*  El perro puede ser juguetón en una probabilidad de 30%, esto significa que se mueve mientras espera. 

A lo largo del juego hay un temporizador que se incrementara cada segundo.
Secuencia normal:
Entra un personaje aleatorio 
El personaje pide un alimento aleatorio a través de un globo de diálogo 
El jugador interactúa arrastrando el alimento pedido hacia el globo de diálogo
El personaje dice “Gracias” a través de un globo de diálogo
Se suma un punto
El personaje se va (desaparece)

Secuencia posible:
Entra un personaje aleatorio 
El personaje insulta (usando símbolos como “#!$?”) a través de un globo de diálogo 
El jugador interactúa apretando el botón de “echar cliente”
El personaje se va (desaparece)


Secuencia posible:
Entra un personaje aleatorio 
El personaje pide un alimento aleatorio a través de un globo de diálogo 
El jugador interactúa arrastrando un alimento incorrecto hacia el globo de diálogo
El personaje cambia su aspecto a uno enojado
Se resta un punto
El personaje se va (desaparece)

Secuencia posible:
Entra un personaje aleatorio 
El personaje pide un chilli picante a través de un globo de diálogo 
El jugador interactúa arrastrando el alimento pedido hacia el globo de diálogo
Cuando lo selecciona cambia la imagen a una de un fuego (representando el picante)
El personaje dice “Gracias” a través de un globo de diálogo, mientras está rojo
 Se suma un punto
El personaje se va (desaparece)

Las colecciones se incorporan gracias a las siguientes listas:
Lista de Personajes posibles:
Chilli
Nala
Moro
Berna


Lista de Alimentos Posibles:
Hamburguesa
Pizza
Ají Picante

Interacciones Posibles del Usuario:
Seleccionar y arrastrar los alimentos 
Presionar el botón de echar cliente mediante un evento del teclado

Incorpore Herencias en mi código para:
La clase PerroJugueton, que hereda de su clase madre Perro. → la diferencia es que este se mueve.
La clase ComidaPicante, que tiene una diferente reacción al ser seleccionada. 
