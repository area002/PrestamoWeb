/**
 * The TipoPrestamos entity.
 *
 * @author    
 *
 *
 */
package prestamoweb
class TipoPrestamos {
    static mapping = {
         table 'tipo_prestamos'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         // In case a sequence is needed, changed the identity generator for the following code:
//       id generator:'sequence', column:'id_tip_pres', params:[sequence:'tipo_prestamos_sequence']
         id generator:'identity', column:'id_tip_pres'
    }

    String descri

    static constraints = {

        descri(blank: false)
    }

}
