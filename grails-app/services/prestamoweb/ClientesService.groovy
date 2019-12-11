package prestamoweb

import grails.gorm.transactions.Transactional

@Transactional
class ClientesService {

    def serviceMethod() {

    }

    def salvar(String nombre,String apellido, String cedula, String direccion, String celular, String telefono){

        Cliente cliente = new Cliente(
                nombreCli: nombre,
                apellido: apellido,
                cedCli: cedula,
                dirCli: direccion,
                celCli: celular,
                telefono: telefono,
                visible: true
        )

        cliente.save(failOnError: true)

    }
}
