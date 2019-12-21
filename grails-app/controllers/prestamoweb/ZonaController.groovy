package prestamoweb

import grails.converters.JSON
import groovy.json.JsonOutput

class ZonaController {

    def index() { }

    ZonaService zonaService

    def Zona(){

        render view: "/home_page/reg_zonas";

    }

    def salvar(){

        Map mapa = zonaService.salvar(

                params.idcliente as Long,
                params.idnombre as String,

        );

        render JsonOutput.toJson(mapa);
    }

    def buscarclientebyid(){
        Tzona zonas = zonaService.buscarclientebyid(params.idcliente as Long);
        render zonas as JSON;
    }

    def eliminar(){
        Map mapa = zonaService.eliminar(params.idcliente as Long);
        render JsonOutput.toJson(mapa);
    }
}
