class Empleado{
	var estamina
	var rol
	constructor(_estamina,_rol){
		estamina = _estamina
		rol = _rol
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
