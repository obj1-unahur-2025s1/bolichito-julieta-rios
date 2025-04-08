import objetos.*
import personas.*


object bolichito {
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera
    
    method objetoEnMostrador(objetoAPoner) {
        objetoEnMostrador = objetoAPoner}

    method objetoEnVidriera(objetoAPoner) {
        objetoEnVidriera = objetoAPoner}

    method esBrillante() = objetoEnMostrador.material().brilla() &&
                            objetoEnVidriera.material().brilla()
    
    method esMonocromatico() = objetoEnMostrador.color() ==
                            objetoEnVidriera.color()

    method estaEquilibrado() = objetoEnMostrador.peso() >
                            objetoEnVidriera.peso()
    
    method tieneAlgoDeColor(unColor) = objetoEnMostrador.color() == unColor ||
                                        objetoEnVidriera.color() == unColor
    
    method puedeMejorar() = not self.estaEquilibrado() || 
                            self.esMonocromatico()
    
    method puedeOfrecerleAlgoA(unaPersona) = unaPersona.leGusta(objetoEnMostrador) ||
                                            unaPersona.leGusta(objetoEnVidriera)

    method intercambiarObjetos(){
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }

    method intercambiarPlus() {
        self.intercambiar(objetoEnVidriera, objetoEnMostrador)
    }

    method intercambiar(unObjeto,otroObjeto) {
        objetoEnMostrador = unObjeto
        objetoEnVidriera = otroObjeto
    }
}