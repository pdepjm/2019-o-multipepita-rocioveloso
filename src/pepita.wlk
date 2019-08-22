object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz(){
		return 500 < energia < 1000
	}
	method cuantoQuiereVolar(){
		var kms = energia/5
		if(energia.between(300, 400)){
			kms = kms + 10
		}
		if(energia % 20 == 0){
			kms = kms + 15
		}
	}
	method salirAComer(comida){
		self.vola(comida.distancia())
		self.come(comida)
		self.vola(comida.distancia())
	}
}

object alpiste {
	var gramos = 10
	var distanciaPepita = 5
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
	method distancia(){
		return distanciaPepita
	}
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}
object mijo {
	method mojarse(){
		energia = energia + 15
	}
	method secarse(){
		energia = energia + 20
	}
}
object canelones{
	method sinNada(){
		return 20
	}
	method conSalsa(){
		return 25
	}
	method conQueso(){
		return 27
	}
	method conSalsaYQueso(){
		return 32
	}
}