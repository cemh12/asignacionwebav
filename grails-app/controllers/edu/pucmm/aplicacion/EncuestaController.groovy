package edu.pucmm.aplicacion

import GrailsApp.Springs.EncuestaService
import edu.pucmm.Aplicacion.Encuesta
import edu.pucmm.Aplicacion.Usuario
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class EncuestaController {
    def springSecurityService
    EncuestaService encuestaService
    def index() {
    }
    def guardar(Encuesta encuesta){
        def UsuarioActual = (Usuario) springSecurityService.getCurrentUser()
        encuestaService.guardar(encuesta, UsuarioActual)
        render 'Se ha guardado con exito'
    }
    def tablero() {
        [encuesta: Encuesta.list()]
    }

}
