/* final Paradigmas septiembre 2020, objetos (Ahora con Juan, perros y gatos) */


class Perro{
	var property huesos
	var property color
	var property velocidad
	method puedoCapturarlo(){			//aca devuelvo un bool
		return huesos > 1				//en consola no imprime nada, no se por que. 
	}

	method puedeSaltar(){
		return self.color().contains("Blanco")
	}
	method ganarVelocidad(comida){
		velocidad += (comida*10)
	}
	method encontrarHuesos(cuantos){
		huesos += cuantos
	}
}

class Gato{
	var property pulgas
	var property color
	method puedeSaltar(){
		return self.pulgas() < 10
	}
	method puedoCapturarlo(){
		// return "Que haces loco?" 			//aca devuelvo un string
		return false
	}
	
}

class Doggo inherits Perro{ 					//herencia

	override method ganarVelocidad(comida){		//para demostrar que por herencia puedo heredar cosas y otras cambiarlas
		velocidad += 7*comida 
	} 
	override method puedoCapturarlo(){ 			//en realidad seria "puede ser capturado?" porque el mensaje va al perro 
		return false
	}
	method estaCansado(){						//fijese que no cualquier perro puede entender este mensaje
		return velocidad > 50
	}
}

object juan {
	var property mascotaPrincipal 					// Esto puede ser un perro, un gato, o lo que sea (que exista). 
	var property otrasMascotas = [] 				// Fijese que la mascotaPrincipal puede ser incluso un Int, pero no va a funcionar
	method estaFeliz(){								// con los otros metodos. 
		mascotaPrincipal.puedoCapturarlo()			// <- esto devuelve una funcion polimorfica, que puede devolver un bool o un string 
	}												// 		si esperara un tipo de dato en particular, esto no funcionaria

  method conseguirMascota(nuevaMascota){
  	if (self.mascotaPrincipal() == null ) {
    mascotaPrincipal = nuevaMascota					//cambia a donde apunta la variable mascota. 
  } else {
  	self.otrasMascotas().add(nuevaMascota)			//permite agregar otras mascotas a una lista secundaria
  		} 
  }
    
}  


const perroUno = new Perro(huesos = 0, color = ["Blanco", "Negro"], velocidad = 10)
const perroDos = new Perro(huesos = 3, color = ["Marron"], velocidad = 15)

const gatoUno = new Gato(pulgas = 15, color = ["Gris"])
const gatoDos = new Gato(pulgas = 5, color = ["Blanco"])

const perroRapido = new Doggo(huesos = 3, color = ["Verde"], velocidad = 45)

