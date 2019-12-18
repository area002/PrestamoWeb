package prestamoweb

import grails.converters.JSON
import groovy.json.JsonOutput

class ClientesController {

    def index() { }

    ClientesService clientesService;
    CobradoresService cobradoresService;

    def Clientes(){

        List clienteList = clientesService.GetTabla();
        Map mapa = clientesService.GetCombos()

        render view: "/home_page/reg_clientes",model: [clienteList:clienteList,combos:mapa];

    }

//    def Listacombos(){
//
//        render view: "/home_page/reg_clientes",model: [];
//
//    }






    def salvar(){

        Map mapa = clientesService.salvar(
                params.idcliente as Long,
                params.idnombre as String,
                params.idapellido as String,
                params.idcedula as String,
                params.iddireccion as String,
                params.idcelular as String,
                params.idtelefono as String,
                params.zona as String,
                params.agente as String,
                params.cobrador as String
        );

        render JsonOutput.toJson(mapa);
    }

    def buscarclientebyid(){
        Cliente cliente = clientesService.buscarclientebyid(params.idcliente as Long);
        render cliente as JSON;
    }

    def eliminar(){
        Map mapa = clientesService.eliminar(params.idcliente as Long);
        render JsonOutput.toJson(mapa);
    }

    def actualizarTala(){
//        println("KLOK")
        List<Cliente> clienteList = clientesService.GetTabla();
        render JsonOutput.toJson(clienteList);
    }
}
