import destinos.*


object paquete {
  var property destino = brooklyn
  var estaPago= false
  method puedeSerEntregado(unMensajero) {
    return destino.dejaPasar(unMensajero) && estaPago   
  } 
  method registrarPago() {estaPago= true}
  method rechazarPago() {estaPago= false}
  method precio() {
    return 150
  }
  method estaPago()= estaPago
}

object paquetito {
  var property destino = brooklyn
  method puedeSerEntregado(unMensajero) {
    return destino.dejaPasar(unMensajero)
  }
  method precio() {
    return 0
  }
  method estaPago()= true
}
object paquetonViajero {
  const destinos= #{}
  var importeAbonado= 0
  method precio() = destinos.size()*100
  method registrarPago(unValor) {
    importeAbonado = (importeAbonado + unValor).min(self.precio())
  }
  method estaPago(){
    return importeAbonado == self.precio()
  } 
}