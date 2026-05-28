import colores.*

//Clase, porque habrá varios
class ChevyCorsa {
	//Sin inicializar porque debe especificarse al instanciar
	//Property porque necesito el método de consulta color()
	const property color
	
	method capacidad() = 4
	method peso() = 1300
	method velocidadMaxima() = 150
}

//Clase, porque habrá varios
class RenaultKwid {
	//Sin inicializar porque debe especificarse al instanciar
	const tieneTanque
	
	method capacidad() = if (!tieneTanque) 4 else 3
	method peso() = if (!tieneTanque) 1200 else 1350
	method velocidadMaxima() = if (!tieneTanque) 110 else 120
	method color() = azul
}

//Objeto bien conocido (único, WKO) porque es solo una trafic
object trafic {
	var interior = comodo
	var motor = pulenta
	
	method cambiarInterior(nuevoInterior) { interior = nuevoInterior }	
	method cambiarMotor(nuevoMotor) { motor = nuevoMotor }

	method capacidad() = interior.capacidad()
	method peso() = (4000 + interior.peso()) + motor.peso()
	method velocidadMaxima() = motor.velocidadMaxima()
	method color() = blanco
}

//Clase, porque habrá varios
class AutoEspecial {
	//Sin inicializar ninguno porque deben especificarse al instanciar
	//Property porque necesito el método de consulta de cada uno para respetar polimorfismo
	const property capacidad
	const property velocidadMaxima
	const property color
	const property peso
} 

//Para trafic
//Interiores
object comodo {
	method capacidad() = 5	
	method peso() = 700
}

object popular {
	method capacidad() = 12
	method peso() = 1000
} 

//Motores
object pulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}

object bataton {
	method velocidadMaxima() = 80
	method peso() = 500
}