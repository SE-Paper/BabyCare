package babycare

class Medico extends Persona {
	
	String especialidad
	String registroMedico
	String usuario
	String contraseņa

	static hasMany = [consultas: RegistroConsulta, pacientes:Paciente]
	
    static constraints = {
		especialidad(nullable : false)
		registroMedico(blank : false, nullable : false, matches : "([a-zA-Z0-9]*)")
		usuario(blank : false, nullable : false, unique : true)
		contraseņa(blank : false, nullable : false, length : 5..20)
    }
}
