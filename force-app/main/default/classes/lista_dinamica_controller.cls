public class lista_dinamica_controller {
    public List<sObject> lstObjs {get;set;}
    public List<string> lstFlds {get;private set;}
    
    public lista_dinamica_controller(string param){
        lstFlds = new List<String>();
		string query = 'SELECT Id, Name,  from Contact WHERE %';
        query += param;
        query+= '% AND ';
        lstObjs = Database.query(query);
        
        Set<string> setFlds = new Set<String>();
        for(integer i=0;i<lstObjs.size();i++){
            setFlds.addAll(lstObjs[i].getPopulatedFieldsAsMap().keySet());
        }
        
        lstFlds.addAll(setFlds);
        system.debug(lstFlds);
    }
}