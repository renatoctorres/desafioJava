package distancia



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PercursoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Percurso.list(params), model:[percursoInstanceCount: Percurso.count()]
    }

    def show(Percurso percursoInstance) {
        respond percursoInstance
    }

    def create() {
        respond new Percurso(params)
    }

    @Transactional
    def save(Percurso percursoInstance) {
        if (percursoInstance == null) {
            notFound()
            return
        }

        if (percursoInstance.hasErrors()) {
            respond percursoInstance.errors, view:'create'
            return
        }
		
		Percurso percursoCalculado = calculaPercurso(percursoInstance)
		Percurso percursoComCusto = calculaCustoViagem(percursoCalculado)
        percursoComCusto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'percurso.label', default: 'Percurso'), percursoInstance.id])
                redirect percursoInstance
            }
            '*' { respond percursoInstance, [status: CREATED] }
        }
    }
	
	// CALCULAR MELHOR PERCURSO PARA VIAGEM 
	
	def calculaPercurso(Percurso percursoInstance){
		Medida medida1 = Medida.findByOrigemAndDestinoAndMapa(percursoInstance.origem,percursoInstance.destino,percursoInstance.mapa)
		if (medida1 != null){
			percursoInstance.distanciaTotal = medida.valor
		}
		if (medida1 == null){
			Medida medida2 = Medida.findByOrigemAndMapa(percursoInstance.origem,percursoInstance.mapa)
			if (medida2 != null){
				Medida medida3 = Medida.findByOrigemAndDestinoAndMapa(medida1.destino,percursoInstance.destino,percursoInstance.mapa)
				if(medida3 != null){
					percursoInstance.distanciaTotal = medida2.valor + medida3.valor
				}
			}
		}
		return percursoInstance
	}
	
	
	//CALCULAR O CUSTO TOTAL DA VIAGEM
	
	def calculaCustoViagem(Percurso percursoInstance){
		Percurso percursoComCusto = new Percurso(percursoInstance)
		percursoComCusto.custoViagem =  percursoInstance.distanciaTotal / percursoInstance.autonomia
		percursoComCusto.custoViagem = percursoComCusto.custoViagem * percursoInstance.precoLitro
		return percursoComCusto
	}

    def edit(Percurso percursoInstance) {
        respond percursoInstance
    }

    @Transactional
    def update(Percurso percursoInstance) {
        if (percursoInstance == null) {
            notFound()
            return
        }

        if (percursoInstance.hasErrors()) {
            respond percursoInstance.errors, view:'edit'
            return
        }

        percursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Percurso.label', default: 'Percurso'), percursoInstance.id])
                redirect percursoInstance
            }
            '*'{ respond percursoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Percurso percursoInstance) {

        if (percursoInstance == null) {
            notFound()
            return
        }

        percursoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Percurso.label', default: 'Percurso'), percursoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'percurso.label', default: 'Percurso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
