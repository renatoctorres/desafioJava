package distancia



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MedidaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Medida.list(params), model:[medidaInstanceCount: Medida.count()]
    }

    def show(Medida medidaInstance) {
        respond medidaInstance
    }

    def create() {
        respond new Medida(params)
    }

    @Transactional
    def save(Medida medidaInstance) {
        if (medidaInstance == null) {
            notFound()
            return
        }

        if (medidaInstance.hasErrors()) {
            respond medidaInstance.errors, view:'create'
            return
        }

        medidaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'medida.label', default: 'Medida'), medidaInstance.id])
                redirect medidaInstance
            }
            '*' { respond medidaInstance, [status: CREATED] }
        }
    }

    def edit(Medida medidaInstance) {
        respond medidaInstance
    }

    @Transactional
    def update(Medida medidaInstance) {
        if (medidaInstance == null) {
            notFound()
            return
        }

        if (medidaInstance.hasErrors()) {
            respond medidaInstance.errors, view:'edit'
            return
        }

        medidaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Medida.label', default: 'Medida'), medidaInstance.id])
                redirect medidaInstance
            }
            '*'{ respond medidaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Medida medidaInstance) {

        if (medidaInstance == null) {
            notFound()
            return
        }

        medidaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Medida.label', default: 'Medida'), medidaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'medida.label', default: 'Medida'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
