class UserException inherits wollok.lang.Exception {
	constructor(_mensaje) = super(_mensaje)
}
class Empleado{
	var estamina = 0
	var rol
	var dificultadAcumulada
	var tareasRealizadas = #{}
	var herramientas
	constructor(_estamina,_rol,_herramientas){
		estamina = _estamina
		rol = _rol
		herramientas = _herramientas
	}
	method comerFruta(fruta){
		estamina += fruta.puntosDeEstamina()
	}
	method experiencia(){
		return tareasRealizadas.size() * self.dificultadAcumulada()
	}
	method hacerTarea(tarea){
		if (tarea.cumpleRequisito(self)){
			tareasRealizadas.add(tarea)
		} return throw new UserException("No cumple con los requisitos de dicha tarea")
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
		return tareasRealizadas.sum({tarea=>tarea.dificultad(self)})
	}
	method herramientas(){
		return herramientas
	}
	method fuerza(){
		return estamina/2 + 2
		
	}
}
class Maquina{
	var complejidad
	var herramientasReparacion
	constructor(_complejidad,_herramientasReparacion){
		complejidad = _complejidad
		herramientasReparacion = _herramientasReparacion
	}
	method complejidad(){
		return complejidad
	}
	method herremientasReparacion(){
		return herramientasReparacion
	}
}
class Sector{
	var amenaza
	constructor(_amenaza){
		amenaza = _amenaza
	}
	method amenaza(){
		return amenaza
	}
}

class Tarea{
	method cumpleRequisito(empleado)
	method dificultad(empleado)
	method perderEstamina(empleado)
}

class ArreglarMaquina inherits Tarea{
	var maquina
	constructor(_maquina) {
		maquina = _maquina
	}
	override method cumpleRequisito(empleado){
		return empleado.estamina() >= maquina.complejidad() && (empleado.herramientas().contains(maquina.herramientasReparacion()))	
	}
	override method dificultad(empleado){
		return 2* maquina.complejidad()
	}
	override method perderEstamina(empleado){
		return  empleado.estamina() - maquina.complejidad() 
	}
}
class DefenderSector inherits Tarea{}
class LimpiarSector inherits Tarea{}

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