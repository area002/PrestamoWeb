/**
 * The Cobradores entity.
 *
 * @author    
 *
 *
 */
package prestamoweb
class Cobradores {
    static mapping = {
         table 'cobradores'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         // In case a sequence is needed, changed the identity generator for the following code:
//       id generator:'sequence', column:'idcobrador', params:[sequence:'cobradores_sequence']
         id generator:'identity', column:'idcobrador'
    }

    String nombre
    Boolean visible

    static constraints = {

        nombre(blank: false)
        visible()
    }

}
