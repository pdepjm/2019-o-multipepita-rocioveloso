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
	method haceLoQueQuieras(){
		if(self.estaCansada() == "true"){
			self.come(alpiste)
		}
		if(self.estaFeliz() == "true"){
			self.vola(8)
		}	
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
		pepita.energia() = pepita.energia() + 15
	}
	method secarse(){
		pepita.energia() = pepita.energia() + 20
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
object roque{
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}