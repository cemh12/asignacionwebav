package GrailsApp.Springs

import edu.pucmm.Aplicacion.Rol
import edu.pucmm.Aplicacion.Usuario
import edu.pucmm.Aplicacion.UsuarioRol
import grails.gorm.transactions.Transactional

@Transactional
class UsuarioRolService {

    def crearUsuarioRol(Usuario usuario, Rol rol) {
        UsuarioRol.create(usuario, rol)
    }
}
