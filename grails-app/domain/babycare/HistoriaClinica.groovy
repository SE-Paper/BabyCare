package babycare

class HistoriaClinica {
	
	String codigoPlanilla
	Date fechaHistoria
	int numeroHistoria
	
	static belongsTo = [paciente:Paciente]
	static hasMany = [registrosConsultas:RegistroConsulta]
	
    static constraints = {
		codigoPlanilla (blank: false, nullable: false, matches: "^(?=.*[A-Z])(?=.*[0-9])([A-Z0-9]+)");
		fechaHistoria (blank: false, nullable: false);
		numeroHistoria (blank: false, nullable:false, minsize: 7..10);
    }
}
