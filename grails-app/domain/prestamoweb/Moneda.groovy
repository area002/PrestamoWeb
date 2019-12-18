/**
 * The Moneda entity.
 *
 * @author    
 *
 *
 */
package prestamoweb
class Moneda {
    static mapping = {
         table 'moneda'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         // In case a sequence is needed, changed the identity generator for the following code:
//       id generator:'sequence', column:'id_moneda', params:[sequence:'moneda_sequence']
         id generator:'identity', column:'id_moneda'
    }

    String descri

    static constraints = {

        descri(blank: false)
    }

}
