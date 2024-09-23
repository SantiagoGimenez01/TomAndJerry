object tom{
  var property energia = 20 // joules
  var property velocidad = 5 + energia/10 // metros/segundos
  method comerRaton(raton) {
    energia += 12 + raton.peso()
  }

  method correr(segundos){
    energia -= velocidad * segundos
  }

  method meConvieneComerRaton(unRaton, unaDistancia) {
    const energiaInicial = self.energia()
    const tiempo = unaDistancia / velocidad
    self.correr(tiempo)
    return energiaInicial < self.energia()
  } 

}

object raton{
  var property peso = 10
}