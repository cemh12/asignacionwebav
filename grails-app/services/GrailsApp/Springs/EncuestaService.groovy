package GrailsApp.Springs

import edu.pucmm.Aplicacion.Usuario
import edu.pucmm.Aplicacion.Encuesta
import grails.gorm.transactions.Transactional

@Transactional
class EncuestaService {

    def guardar(Encuesta encuesta, Usuario usuario) {

        encuesta.usuario = usuario
        encuesta.save(flush: true, failOnError: true)
    }
}
