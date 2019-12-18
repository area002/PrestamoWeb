/**
 * The Agente entity.
 *
 * @author    
 *
 *
 */
package prestamoweb
class Agente {
    static mapping = {
         table 'agente'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         // In case a sequence is needed, changed the identity generator for the following code:
//       id generator:'sequence', column:'idagente', params:[sequence:'agente_sequence']
         id generator:'identity', column:'idagente'
    }

    String nombre
    Boolean visible

    static constraints = {

        nombre(blank: false)
        visible(nullable: true)
    }

}
