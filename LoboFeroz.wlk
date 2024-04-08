object loboFeroz {
	var peso = 10
	
	method estaSaludable(){
		return peso > 20 && peso < 150
	}
	
	method subeDePeso(cantidad){
		peso = peso + cantidad
	}
	
	method bajaDePeso(cantidad){
		peso = 0.max(peso - cantidad) 
	}
	
	method sufreCrisis(){
		peso = 10
	}
	
	method comer(alimento){
		peso = peso + alimento.peso() *0.1
	}
	
	method correr(){
		peso = peso -1
	}
	
	method soplaCasa(tipoCasa, habitantes){
		peso = 0.max(peso- tipoCasa.resistencia(habitantes))
	}
}

object caperucitaRoja{
	
	method peso(){
		return 60 + canasta.peso(manzana,5)
	}
}

object abuelita{

	method peso(){return 50}
}

object canasta{
	method peso(alimento, cantidad){
		return cantidad * alimento.peso()
	}
}

object manzana{
	
	method peso(){
		return 0.2
	}
}

object cazador{
	
	method peso(){
		return 90
	}
	
	method haceSufrirCrisis(animal){
		animal.sufreCrisis()
	}
}

object casaDePaja{
	method resistencia(cantidadDeChanchitos){return 0+chanchito.peso()*cantidadDeChanchitos}
}

object casaDeMadera{
	method resistencia(cantidadDeChanchitos){return 5+chanchito.peso()*cantidadDeChanchitos}
}

object casaDeLadrillos{
	method resistencia(cantidadDeLadrillos, cantidadDeChanchitos){
		return cantidadDeLadrillos *2 + chanchito.peso()*cantidadDeChanchitos
	}
}

object chanchito{
	method peso(){
		return 5
	}
}
