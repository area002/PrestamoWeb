/**
 * The CantCuotas entity.
 *
 * @author    
 *
 *
 */
package prestamoweb
class CantCuotas {
    static mapping = {
         table 'cant_cuotas'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         // In case a sequence is needed, changed the identity generator for the following code:
//       id generator:'sequence', column:'id_cuotas', params:[sequence:'cant_cuotas_sequence']
         id generator:'identity', column:'id_cuotas'
    }
    String decri

    static constraints = {
        decri(blank: false)
    }
}
