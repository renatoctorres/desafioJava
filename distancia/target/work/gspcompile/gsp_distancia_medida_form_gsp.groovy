import distancia.Medida
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_distancia_medida_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/medida/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: medidaInstance, field: 'destino', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("medida.destino.label"),'default':("Destino")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("destino"),'name':("destino.id"),'from':(distancia.Ponto.list()),'optionKey':("id"),'optionValue':("letra"),'required':(""),'value':(medidaInstance?.destino?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: medidaInstance, field: 'mapa', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("medida.mapa.label"),'default':("Mapa")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("mapa"),'name':("mapa.id"),'from':(distancia.Mapa.list()),'optionKey':("id"),'optionValue':("nome"),'required':(""),'value':(medidaInstance?.mapa?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: medidaInstance, field: 'origem', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("medida.origem.label"),'default':("Origem")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['id':("origem"),'name':("origem.id"),'from':(distancia.Ponto.list()),'optionKey':("id"),'optionValue':("letra"),'required':(""),'value':(medidaInstance?.origem?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: medidaInstance, field: 'valor', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("medida.valor.label"),'default':("Valor")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("valor"),'value':(fieldValue(bean: medidaInstance, field: 'valor')),'required':("")],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1441859565281L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
