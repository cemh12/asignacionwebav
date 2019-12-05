package edu.pucmm.Aplicacion

class Encuesta {

    Integer pregunta1
    Integer pregunta2
    Integer pregunta3
    String comentario
    Usuario usuario

    static constraints = {
        pregunta1 blank: false
        pregunta2 blank: false
        pregunta3 blank: false
        comentario blank: false
        usuario nullable: true

    }
}
