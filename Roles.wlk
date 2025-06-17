// Roles: guerrero, cazador, brujo

object guerrero {
    method extra() = 100
    method esGroso(unPersonaje) = unPersonaje.fuerza() > 50
}

object brujo {
    method extra() = 0
    method esGroso() = true
}

class Cazador {
    const mascota
    method extra() = mascota.potencialOfensivo()
    method esGroso(unPersonaje) = mascota.edad() > 10
}


// Mascota: 
class Mascota {
    const tieneGarras
    const fuerza
    const edad

    method edad() = edad
    method tieneGarras() = tieneGarras
    method potencialOfensivo() = if(self.tieneGarras()) fuerza * 2 else fuerza
}