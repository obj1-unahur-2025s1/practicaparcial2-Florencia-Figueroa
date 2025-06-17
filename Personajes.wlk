// Alianza: Humanos
class Personaje {
    var rol
    const inteligencia
    const fuerza

    method esInteligente() = inteligencia > 50
    method esGroso() = self.esInteligente() or rol.esGroso(self)
    method cambiarRol(unRol){rol = unRol}
    method fuerza() = fuerza
    method potencialOfensivo() = (fuerza * 10) + rol.extra()
}


// Horda: Orcos
class Orco inherits Personaje {
    override method esInteligente() = false
    override method potencialOfensivo() = super() + ((fuerza * 10 )/ 100)
}


// Ejercito:
class Ejercito {
    const ejercito = []

    method totalPotencial() = 
        ejercito.sum({e => e.potencialOfensivo()})

    method lucharContra(unaLocalidad){
        if(ejercito.totalPotencial() > unaLocalidad.totalPotencial()){
            unaLocalidad.desalojar()
            unaLocalidad.esOcupadaPor(ejercito)
        }else
            unaLocalidad.mejorarDefenza()
    }

    method ejercitoConMayorPotencial(unaCantidad){
      const nuevoEjercito = ejercito.sortBy({e1 ,e2 => e1.potencialOfensivo() > e2.potencialOfensivo()}.take(unaCantidad))
      ejercito.remove(nuevoEjercito)
      return nuevoEjercito
    }
}