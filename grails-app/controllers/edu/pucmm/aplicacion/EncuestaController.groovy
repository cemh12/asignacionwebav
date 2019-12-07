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
        [pregunta11: Encuesta.where {
            pregunta1 == 1
        }.count(),
        pregunta12: Encuesta.where {
            pregunta1 == 2
        }.count(),
        pregunta13: Encuesta.where {
            pregunta1 == 3
        }.count(),
        pregunta14: Encuesta.where {
            pregunta1 == 4
        }.count(),
        pregunta15: Encuesta.where {
            pregunta1 == 5
        }.count(),
        pregunta21: Encuesta.where {
            pregunta2 == 1
        }.count(),
        pregunta22: Encuesta.where {
            pregunta2 == 2
        }.count(),
        pregunta23: Encuesta.where {
            pregunta2 == 3
        }.count(),
        pregunta24: Encuesta.where {
            pregunta2 == 4
        }.count(),
        pregunta25: Encuesta.where {
            pregunta2 == 5
        }.count(),
        pregunta31: Encuesta.where {
            pregunta3 == 1
        }.count(),
        pregunta32: Encuesta.where {
            pregunta3 == 2
        }.count(),
        pregunta33: Encuesta.where {
            pregunta3 == 3
        }.count(),
        pregunta34: Encuesta.where {
            pregunta3 == 4
        }.count(),
        pregunta35: Encuesta.where {
            pregunta3 == 5
        }.count(),
        encuesta: Encuesta.list()]
    }

}
