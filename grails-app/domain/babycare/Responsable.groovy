package babycare

class Responsable extends Afiliado {
	
	String parentesco
	String contrase�a
	
	static hasMany=[paciente:Paciente]						//un tutor puede tener varios hijos
	
    static constraints = {
		parentesco (blank: false, nullable: false, inList:["Padre", "Madre", "Hermano(a)", "Tio(a)", "Abuelo(a)"])
		contrase�a (blank:false, nullable:false, unique:true)	
    }
}
