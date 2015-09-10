package distancia

class Ponto {
	
	Long id
	String letra

    static constraints = {
		letra inList:['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'],nullable:false
    }
	
	
}