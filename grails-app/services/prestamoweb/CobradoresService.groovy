package prestamoweb

import grails.gorm.transactions.Transactional

@Transactional
class CobradoresService {

    def serviceMethod() {}

    List<Cobradores> GetTabla(){
        return  Cobradores.findAllByVisible(true);
    }
}
