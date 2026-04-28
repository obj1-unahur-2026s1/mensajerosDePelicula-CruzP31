object brooklyn {
  method dejaPasar(unMensajero) {
    return unMensajero.peso() <= 1000
  }
}
object matrix {
  method dejaPasar(unMensajero) {
    return unMensajero.puedeLlamar()
  }
}