import distancia.Percurso
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_distancia_percurso_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/percurso/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: percursoInstance, field: 'autonomia', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("percurso.autonomia.label"),'default':("Autonomia")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['name':("autonomia"),'value':(fieldValue(bean: percursoInstance, field: 'autonomia')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: percursoInstance, field: 'precoLitro', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("percurso.precoLitro.label"),'default':("Preco Litro")],-1)
printHtmlPart(2)
invokeTag('field','g',19,['name':("precoLitro"),'value':(fieldValue(bean: percursoInstance, field: 'precoLitro')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: percursoInstance, field: 'custoViagem', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("percurso.custoViagem.label"),'default':("Custo Viagem")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['name':("custoViagem"),'value':(fieldValue(bean: percursoInstance, field: 'custoViagem')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: percursoInstance, field: 'destino', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("percurso.destino.label"),'default':("Destino")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("destino"),'name':("destino.id"),'from':(distancia.Ponto.list()),'optionKey':("id"),'required':(""),'value':(percursoInstance?.destino?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: percursoInstance, field: 'distanciaTotal', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("percurso.distanciaTotal.label"),'default':("Distancia Total")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("distanciaTotal"),'value':(fieldValue(bean: percursoInstance, field: 'distanciaTotal')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: percursoInstance, field: 'mapa', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("percurso.mapa.label"),'default':("Mapa")],-1)
printHtmlPart(2)
invokeTag('select','g',55,['id':("mapa"),'name':("mapa.id"),'from':(distancia.Mapa.list()),'optionKey':("id"),'required':(""),'value':(percursoInstance?.mapa?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: percursoInstance, field: 'origem', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("percurso.origem.label"),'default':("Origem")],-1)
printHtmlPart(2)
invokeTag('select','g',64,['id':("origem"),'name':("origem.id"),'from':(distancia.Ponto.list()),'optionKey':("id"),'required':(""),'value':(percursoInstance?.origem?.id),'class':("many-to-one")],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1441864176017L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
