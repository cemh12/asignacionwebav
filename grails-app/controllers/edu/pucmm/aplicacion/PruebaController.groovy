package edu.pucmm.aplicacion

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class PruebaController {

    def index() {
        render 'Secure access only'
    }
}
