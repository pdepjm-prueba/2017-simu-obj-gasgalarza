class Empleado{
	var estamina = 0
	var rol
	var dificultadAcumulada
	var tareasRealizadas = #{}
	constructor(_estamina,_rol){
		estamina = _estamina
		rol = _rol
	}
	method comerFruta(fruta){
		estamina += fruta.puntosDeEstamina()
	}
	method experiencia(){
		return tareasRealizadas.size() * self.dificultadAcumulada()
	}
	method arreglarMaquina(){
		
	}
	method hacerTarea(){
		
	}
	method cambiarRol(nuevoRol){
		rol = nuevoRol	
	}
	method estamina(){
		return estamina
	}
	method rol(){
		return rol
	}
	method dificultadAcumulada(){
		return tareasRealizadas.sum({t=>t.dificultad(self)})
	}
}

class Biclopes inherits Empleado{
}
class Ciclopes inherits Empleado{
}

class Soldado{
	var danio = 0
	constructor(){
		
	}
	method usarArma(){
		danio += 2
	}
	method DanioArma(){
		return danio
	}
}

class Obrero{
	var cinturon
	constructor(_herramientas){
		cinturon = _herramientas
		
	}
}
class Mucama{
	
}

class Maquina{
	var complejidad
	constructor(_complejidad){
		complejidad = _complejidad
	}
	method complejidad(){
		return complejidad
	}
}

object laboratorio{
	var sectores
method arreglarMaquina(empleado,maquina){
	if(empleado.estamina() == maquina.complejidad() && empleado.herramientas().contains(maquina.herramientasDeReparacion())){
		empleado.estamina() -= maquina.complejidad()
	} // Lanzar una excepcion	
 } 
 method defenderSector(empleado,sector){
 	if(empleado.rol() =! new Mucama())
 }
}

class Fruta{
	var puntos
	constructor(_puntos){
		puntos = _puntos
		}
		method puntosDeEstamina(){
			return puntos
		}
	}

object manzana inherits Fruta(5){}
object banana inherits Fruta(10){}
object uva inherits Fruta(1){}