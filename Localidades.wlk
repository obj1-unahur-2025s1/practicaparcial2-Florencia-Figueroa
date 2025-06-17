// Localidades: aldeas y ciudades
class Localidad {
    var habitantes
    var cantidadHabitantes

    method potenciaTotal() = 
        habitantes.sum({h => h.potencialOfensivo()})

    method desalojar(){cantidadHabitantes = 0}

    method esOcupadaPor(unEjercito){
        cantidadHabitantes = unEjercito.size()
    }
}

class Aldea inherits Localidad{
    const cantidadMaximaHabitantes

    override method esOcupadaPor(unEjercito){
      if(unEjercito.size() > cantidadMaximaHabitantes){
        habitantes =  unEjercito.ejercitoConMayorPotencial(10)
      }
    }
}

class Ciudad inherits Localidad{
    override method potenciaTotal() = super() + 300
}