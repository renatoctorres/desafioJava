package distancia

class Percurso {
	
	Ponto origem
	Ponto destino
	Mapa mapa
	BigDecimal autonomia
	BigDecimal precoLitro
	BigDecimal distanciaTotal
	BigDecimal custoViagem
	

    static constraints = {
		autonomia nullable:false,blank:false
		precoLitro nullable:false,blank:false
    }
}
