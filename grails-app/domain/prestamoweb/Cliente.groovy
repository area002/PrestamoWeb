/**
 * The Cliente entity.
 *
 * @author    
 *
 *
 */
package prestamoweb
class Cliente {
    static mapping = {
         table 'cliente'
         // version is set to false, because this isn't available by default for legacy databases
         version false
         // In case a sequence is needed, changed the identity generator for the following code:
//       id generator:'sequence', column:'idcliente', params:[sequence:'cliente_sequence']
         id generator:'identity', column:'idcliente'
    }
    String nombreCli
    String apellido
    String cedCli
    String dirCli
    String celCli
    String telefono
    Boolean visible
    String agente
    String cobrador
    String zona

    static constraints = {
        nombreCli(size: 0..30)
        apellido(size: 1..35, blank: false)
        cedCli(nullable: true)
        dirCli(size: 0..50)
        celCli(nullable: true)
        telefono(nullable: true)
        visible(nullable: true)
        agente()
        cobrador()
        zona()
    }

}
