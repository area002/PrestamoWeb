/**
 * The Tzona entity.
 *
 * @author    
 *
 *
 */
package prestamoweb
class Tzona {
    static mapping = {
         table 't_zona'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         // In case a sequence is needed, changed the identity generator for the following code:
//       id generator:'sequence', column:'idzona', params:[sequence:'t_zona_sequence']
         id generator:'identity', column:'idzona'
    }

    String nombre
    Boolean visible

    static constraints = {

        nombre(blank: false)
        visible()
    }

}
