package prestamoweb

import grails.converters.JSON
import groovy.json.JsonOutput

class RegistrocobradoresController {

    def index() { }

    CobradoresService cobradoresService

    def Cobradores(){
        List conbradoreslist = cobradoresService.GetTabla()
        render view: "/home_page/cobradores", model: [cobradoreslist: conbradoreslist];

    }

    def salvar(){

        Map mapa = cobradoresService.salvar(

                params.idcliente as Long,
                params.idnombre as String,

        );

        render JsonOutput.toJson(mapa);
    }

    def buscarclientebyid(){
        Cobradores cobradores = cobradoresService.buscarclientebyid(params.idcliente as Long);
        render cobradores as JSON;
    }

    def eliminar(){
        Map mapa = cobradoresService.eliminar(params.idcliente as Long);
        render JsonOutput.toJson(mapa);
    }
}
