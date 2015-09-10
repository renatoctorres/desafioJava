package distancia



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MapaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Mapa.list(params), model:[mapaInstanceCount: Mapa.count()]
    }

    def show(Mapa mapaInstance) {
        respond mapaInstance
    }

    def create() {
        respond new Mapa(params)
    }

    @Transactional
    def save(Mapa mapaInstance) {
        if (mapaInstance == null) {
            notFound()
            return
        }

        if (mapaInstance.hasErrors()) {
            respond mapaInstance.errors, view:'create'
            return
        }

        mapaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mapa.label', default: 'Mapa'), mapaInstance.id])
                redirect mapaInstance
            }
            '*' { respond mapaInstance, [status: CREATED] }
        }
    }

    def edit(Mapa mapaInstance) {
        respond mapaInstance
    }

    @Transactional
    def update(Mapa mapaInstance) {
        if (mapaInstance == null) {
            notFound()
            return
        }

        if (mapaInstance.hasErrors()) {
            respond mapaInstance.errors, view:'edit'
            return
        }

        mapaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Mapa.label', default: 'Mapa'), mapaInstance.id])
                redirect mapaInstance
            }
            '*'{ respond mapaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Mapa mapaInstance) {

        if (mapaInstance == null) {
            notFound()
            return
        }

        mapaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Mapa.label', default: 'Mapa'), mapaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mapa.label', default: 'Mapa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
