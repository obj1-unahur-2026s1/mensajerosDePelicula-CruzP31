import mensajeros.*
import paquetes.*

object mensajeria {
    const mensajeros= []
    method contratarMensajero(UnMensajero) {
        mensajeros.add(UnMensajero)
    }
    method despedirMensajero(unMensajero) {
        mensajeros.remove(unMensajero)
    }
    method despedirATodos() {
        mensajeros.clear()
    }
    method esGrande() {return mensajeros.size() > 2}
    method elPrimerMensajeroPuedeEntregar(unPaquete) {
      return unPaquete.puedeSerEntregado(self.primerMensajero())
    }
    method primerMensajero()= mensajeros.first()
    method ultimoMensajero()= mensajeros.last()
    method pesoUltimoMensajero() {
      return self.ultimoMensajero().pesoTotal()
    }
    method pesoTotalDeTodosLosMensajeros()= mensajeros.sum({m =>m.pesoTotal() })
    method estaElMensajero(unMensajero) {
      return mensajeros.find(unMensajero)
    }
}