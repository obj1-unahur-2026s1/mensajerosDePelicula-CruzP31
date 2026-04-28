import destinos.*


object paquete {
  var property destino = brooklyn
  var estaPago= false
  method puedeSerEntregado(unMensajero) {
    return destino.dejaPasar(unMensajero) && estaPago   
  } 
  method registrarPago() {estaPago= true}
  method rechazarPago() {estaPago= false}
}