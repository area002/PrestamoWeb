package prestamoweb

import grails.gorm.transactions.Transactional

@Transactional
class PrestamosService {

    def serviceMethod() { }

    def GetCombos(){
        Map mapa = new HashMap();

        List<CantCuotas> cantCuotasList = CantCuotas.findAll();
        mapa.put("cuotas",cantCuotasList);

        List<Moneda> monedaList = Moneda.findAll();
        mapa.put("monedas",monedaList);

        List<TipoPrestamos> tipoPrestamosList = TipoPrestamos.findAll()
        mapa.put("tipos_prestamos",tipoPrestamosList)

        return mapa;
    }
}
