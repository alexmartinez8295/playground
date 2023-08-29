global class ConsultarMonto {
    @future(callout=true) 
    public static void consultaMontoMP(String jsonAccount){
        if (test.isRunningTest()) Test.setMock(HttpCalloutMock.class, new UploadFileMock());
        system.debug('Inicia http request');
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://localhost/auan/web_scraping.php');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Set the body as a JSON object
        system.debug('Objeto json a enviar dentro de http:');
		system.debug(jsonAccount);        
        request.setBody(jsonAccount);
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 200) {
            System.debug('The status code returned was not expected: ' + response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
            actualizaMontoAngel(response.getBody().trim());
        }
    }
    
    public static void actualizaMontoAngel(String response){      
        CreateIncomingPayload incomingData = (CreateIncomingPayload)JSON.deserialize(response, CreateIncomingPayload.class);
        system.debug('IncomingData');
        system.debug(incomingData);
        update incomingData.cuentas;
    }
    
    public class CreateIncomingPayload {
        public List<Account> cuentas {get;set;}
    }
    
    global with sharing class UploadFileMock implements HTTPCalloutMock{
        global HTTPResponse respond(HTTPRequest req){
            HttpResponse res = new HTTPResponse();
            res.setHeader('Content-Type', 'application/JSON');
            res.setBody('Your body');
            res.setStatusCode(201);
            return res;
        }
    }
    
    /*public class cuenta{
        public String id {get;set;}
        public String idVentane {get;set;}
    }*/
}