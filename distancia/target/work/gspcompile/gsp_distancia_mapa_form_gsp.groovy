import distancia.Mapa
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_distancia_mapa_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/mapa/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: mapaInstance, field: 'nome', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("mapa.nome.label"),'default':("Nome")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nome"),'required':(""),'value':(mapaInstance?.nome)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mapaInstance, field: 'medidas', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("mapa.medidas.label"),'default':("Medidas")],-1)
printHtmlPart(5)
invokeTag('select','g',19,['name':("medidas"),'from':(distancia.Medida.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(mapaInstance?.medidas*.id),'class':("many-to-many")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1441856189887L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
