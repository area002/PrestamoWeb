package prestamoweb

import grails.gorm.transactions.Transactional

import java.text.SimpleDateFormat

@Transactional
class PrestamosService {
    SqlService sqlService;

    def serviceMethod() { }

    def GetCombos(){
        Map mapa = new HashMap();

        List<CantCuotas> cantCuotasList = CantCuotas.findAll();
        mapa.put("cuotas",cantCuotasList);

        List<Moneda> monedaList = Moneda.findAll();
        mapa.put("monedas",monedaList);

        List<TipoPrestamos> tipoPrestamosList = TipoPrestamos.findAll()
        mapa.put("tipos_prestamos",tipoPrestamosList)

        List<Cliente> clienteList = Cliente.findAllByVisible(true);
        mapa.put("clienteList",clienteList)

        return mapa;
    }

        def GenerarTabla(Long idcliente, Date fechas,Long idmoneda, Long cant_pagos, Long tipo_prestamo, BigDecimal tasa, BigDecimal monto){

            SimpleDateFormat simpleDateFormat = new SimpleDateFormat('yyyy/MM/dd');

        List lscuotas = [];
            BigDecimal interes=monto*(tasa/100);
            BigDecimal capital=monto/cant_pagos;
            BigDecimal monto_cuota= interes+capital;

            for (int f=0; f<cant_pagos; i++){
                Long dias=30;
                String fechaprestamos=sqlService.Get_Sumar_Dias(fechas,dias)
                Map tupla= new HashMap();
                tupla.put("ncuota", f+1);
                tupla.put("fpago", simpleDateFormat.format(fechaprestamos));
                tupla.put("montocuota", simpleDateFormat.format(monto_cuota));
                tupla.put("interes", simpleDateFormat.format(intereses));
                tupla.put("capital", simpleDateFormat.format(capital));
                lscuotas.add(tupla)



            }
         return lscuotas;
    }
}
