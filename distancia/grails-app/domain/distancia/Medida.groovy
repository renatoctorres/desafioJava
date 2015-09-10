package distancia


class Medida {

Long id
	Ponto origem 
	Ponto destino
	BigDecimal valor
	static belongsTo = [mapa:Mapa]
	
	    static constraints = {
				
		
		}
		
    }
