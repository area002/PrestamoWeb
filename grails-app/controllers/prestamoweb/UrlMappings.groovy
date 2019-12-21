package prestamoweb

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/home_page/home")
        "500"(view:'/error')
        "404"(view:'/notFound')

            //vistas
        "/Registros_de_Clientes"(controller: "clientes"){
            action=[GET:"Clientes"]
        }


        "/Reg_cob"(controller: "Registrocobradores"){
            action=[GET:"Cobradores"]
        }

        "/ Reg_zonas"(controller: "zona"){
            action=[GET:"Zona"]
        }

        "/ Reg_age"(controller: "agente"){
            action=[GET:"Agente"]
        }

        //salvar fomruilarios


        "/Registros_de_Clientes/salvar"(controller: "clientes"){
            action=[POST:"salvar"]
        }

        "/Reg_cob/salvar"(controller: "registrocobradores"){
            action=[POST:"salvar"]
        }




        "/Registros_de_Clientes/buscarclientebyid"(controller: "clientes"){
            action=[POST:"buscarclientebyid"]
        }

        "/Reg_cob/buscarclientebyid"(controller: "registrocobradores"){
            action=[POST:"buscarclientebyid"]
        }




        "/Registros_de_Clientes/eliminar"(controller: "clientes"){
            action=[POST:"eliminar"]
        }
        "/Reg_cob/eliminar"(controller: "registrocobradores"){
            action=[POST:"eliminar"]
        }






        "/Registros_de_Clientes/actualizarTala"(controller: "clientes"){
            action=[POST:"actualizarTala"]
        }

        //PRESTAMOS

        "/Registro_de_Prestamos"(controller: "registroPrestamos"){
            action=[GET:"Registro_de_Prestamos"]
        }


        "/Registro_de_Prestamos/GenerarTabla"(controller: "registroPrestamos"){
            action=[POST:"GenerarTabla"]
        }
    }
}
