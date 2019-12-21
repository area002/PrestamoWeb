package prestamoweb

import Funciones.Funciones
import grails.gorm.transactions.Transactional

@Transactional
class ClientesService {

    SqlService sqlService;
    def serviceMethod() { }
    Funciones funciones = new Funciones();

    Map salvar(Long idcliente,String nombre,String apellido, String cedula, String direccion, String celular, String telefono,
               String zona, String agente, String cobrador){

        Cliente tupla  = Cliente.findById(idcliente);

        if (tupla){
            tupla.setApellido(apellido);
            tupla.setCedCli(cedula);
            tupla.setDirCli(direccion);
            tupla.setCelCli(celular);
            tupla.setNombreCli(nombre);
            tupla.setTelefono(telefono);
            tupla.setZona(zona);
            tupla.setAgente(agente);
            tupla.setCobrador(cobrador);

            tupla.save(failOnError: true);

            return funciones.getRespuesta(true,"Cliente fue Actulizado");
        }
        else{
            Cliente cliente = new Cliente(
                    nombreCli: nombre,
                    apellido: apellido,
                    cedCli: cedula,
                    dirCli: direccion,
                    celCli: celular,
                    telefono: telefono,
                    visible: true,
                    zona: zona,
                    agente: agente,
                    cobrador: cobrador
            )

            cliente.save(failOnError: true);
            return funciones.getRespuesta(true,"El cliente se ha guardado correctamente");
        }

    }

    Cliente buscarclientebyid(Long idcliente){
        return Cliente.findById(idcliente);
    }

    Map eliminar(Long idcliente){
        Cliente cliente = Cliente.findById(idcliente);

        cliente.setVisible(false);

        return funciones.getRespuesta(true,"El cliente ha sido eliminado correctamente!");
    }
//    List<Cliente> clienteList= Cliente.findAll()
    List GetTabla(){

        String sql = "SELECT\n" +
                "c.idcliente AS id,\n" +
                "c.nombre_cli AS nombreCli,\n" +
                "c.ced_cli AS cedCli,\n" +
                "c.cel_cli AS celCli,\n" +
                "c.dir_cli AS dirCli,\n" +
                "a.nombre AS nagente,\n" +
                "co.nombre AS ncobrador,\n" +
                "z.nombre AS nzona\n" +
                "FROM\n" +
                "cliente AS c\n" +
                "INNER JOIN agente AS a ON c.agente::INTEGER = a.idagente\n" +
                "INNER JOIN t_zona AS z ON c.zona::INTEGER = Z.idzona\n" +
                "INNER JOIN cobradores AS co ON c.cobrador::INTEGER = co.idcobrador\n" +
                "WHERE c.visible=TRUE";


        return  sqlService.GetQuery(sql);

    }

    def GetCombos(){
        Map mapa = new HashMap();

        List<Cobradores> cobradoresListList = Cobradores.findAll();
        mapa.put("cobradores",cobradoresListList);

        List<Agente> agenteList = Agente.findAll();
        mapa.put("agentes",agenteList)

        List<Tzona> tzonaList = Cobradores.findAll();
        mapa.put("zonas",tzonaList)




        return mapa;
    }
}
