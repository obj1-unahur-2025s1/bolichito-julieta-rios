import objetos.*

object rosa {
    method leGusta(unaCosa) = unaCosa.peso() <= 2000
}

object estefania {
    method leGusta(unaCosa) = unaCosa.color().esFuerte()
}

object luisa {
    method leGusta(unaCosa) = unaCosa.material().brilla()
}

object juan {
    method leGusta(unaCosa) = !unaCosa.color().esFuerte() || unaCosa.peso().between(1200, 1800)
}

