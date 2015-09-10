package distancia

class Mapa {
	
	Long id
	String nome
	static hasMany = [medidas:Medida]

    static constraints = {
		
		nome nullable:false
    }
}
