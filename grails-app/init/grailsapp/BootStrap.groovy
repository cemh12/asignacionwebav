package grailsapp

import GrailsApp.Springs.UsuarioRolService
import edu.pucmm.Aplicacion.Rol
import edu.pucmm.Aplicacion.Usuario
import edu.pucmm.Aplicacion.UsuarioRol

class BootStrap {
    def UsuarioRolService

    def init = { servletContext ->
        def adminRole = new Rol(authority: 'ROLE_ADMIN').save()
        def testUser = new Usuario(username: 'admin', password: 'admin').save()
        UsuarioRolService.crearUsuarioRol(testUser,adminRole)
        //UsuarioRol.create testUser, adminRole
        /*UsuarioRol.withSession {
            it.flush()
            it.clear()
        }*/
        assert Usuario.count() == 1
        assert Rol.count() == 1
        assert UsuarioRol.count() == 1
    }
    def destroy = {
    }
}
