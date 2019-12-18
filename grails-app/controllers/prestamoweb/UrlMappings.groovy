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


        "/Registros_de_Clientes"(controller: "clientes"){
            action=[GET:"Clientes"]
        }

        "/Registros_de_Clientes/salvar"(controller: "clientes"){
            action=[POST:"salvar"]
        }

        "/Registros_de_Clientes/buscarclientebyid"(controller: "clientes"){
            action=[POST:"buscarclientebyid"]
        }

        "/Registros_de_Clientes/eliminar"(controller: "clientes"){
            action=[POST:"eliminar"]
        }

        "/Registros_de_Clientes/actualizarTala"(controller: "clientes"){
            action=[POST:"actualizarTala"]
        }

        //PRESTAMOS

        "/Registro_de_Prestamos"(controller: "registroPrestamos"){
            action=[GET:"Registro_de_Prestamos"]
        }
    }
}
