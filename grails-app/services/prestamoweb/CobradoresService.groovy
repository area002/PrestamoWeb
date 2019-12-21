package prestamoweb

import Funciones.Funciones
import grails.gorm.transactions.Transactional

@Transactional
class CobradoresService {

    def serviceMethod() {}

    Funciones funciones = new Funciones();

    Map salvar(Long idcliente,String nombre){

        Cobradores tupla  = Cobradores.findById(idcliente);

        if (tupla){
            tupla.setNombre(nombre);


            tupla.save(failOnError: true);

            return funciones.getRespuesta(true,"El cobrador fue actualizado");
        }
        else{
            Cobradores cobrador = new Cobradores(
                    nombre: nombre,
                    visible: true
            );

            cobrador.save(failOnError: true);
            return funciones.getRespuesta(true,"El cobrador se ha guardado correctamente");
        }

    }

    def GetTabla(){
        List<Cobradores> clienteList= Cobradores.findAllByVisible(true)
        println(clienteList);
        return clienteList;
    }

    Cobradores buscarclientebyid(Long idcliente){
        return Cobradores.findById(idcliente);
    }

    Map eliminar(Long idcliente){
        Cobradores cobra = Cobradores.findById(idcliente);

        cobra.setVisible(false);

        return funciones.getRespuesta(true,"El cobrador se ha eliminado!");
    }

}
