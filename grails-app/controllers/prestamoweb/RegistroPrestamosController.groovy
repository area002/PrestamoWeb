package prestamoweb

class RegistroPrestamosController {

    def index() { }

    PrestamosService prestamosService;

    def Registro_de_Prestamos(){
        Map mapa = prestamosService.GetCombos();
        render view: "/home_page/reg_prestamos", model: [combos:mapa]
    }

    def GenerarTabla(){

    }
}
