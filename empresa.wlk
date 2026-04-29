import mensajeros.*
import paquetes.*

object mensajeria {
    const mensajeros= []
    method contratarMensajero(unMensajero) {
        mensajeros.add(unMensajero)
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
    method pesosTotales()= mensajeros.sum({m =>m.pesoTotal() })
    method alMenosUnMensajeroPuedeEntregar(unPaquete){
      mensajeros.any({m => unPaquete.puedeSerEntregado(m)})
    }
}