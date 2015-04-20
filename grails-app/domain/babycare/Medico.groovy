package babycare

class Medico extends Persona {
	
	String especialidad
	String registroMedico
	String usuario
	String contrase�a

    static constraints = {
		especialidad(nullable : false)
		registroMedico(blank : false, nullable : false, matches : "([a-zA-Z0-9]*)")
		usuario(blank : false, nullable : false, unique : true)
		contrase�a(blank : false, nullable : false, length : 5..20)
    }
}
