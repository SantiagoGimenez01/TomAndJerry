object tom{
  var property energia = 20 
  var property velocidadInicial = 5

  method velocidad() = velocidadInicial + self.energia()/10

  method comerRaton(raton) {
    energia += 12 + raton.peso()
  }

  method correr(segundos){
    energia -= self.velocidad() * segundos
  }

  method meConvieneComerRaton(unRaton, unaDistancia) {
    const energiaGanada = 12 + unRaton.peso()
    const energiaPerdida = 0.5 * unaDistancia
    return energiaGanada > energiaPerdida
  } 

}

object raton{
  var property peso = 10
}