global class SignatureComponentController {
    
    public id objParentId{get;set;}
    
    @RemoteAction
    global static boolean guardaFirma(String signatureBody, id parentId){
        try{
            Id idCuenta = '0013h00000ABgmLAAT';
            system.debug('Record== ' + idCuenta);
            system.debug(signatureBody);
            Attachment a = new Attachment();
            a.ParentId = idCuenta;
            a.Body = EncodingUtil.base64Decode(signatureBody);
            a.ContentType = 'image/png';
            a.Name = 'Signature Capture.png';
            insert a;
            
            //String ejeX = coordenadasX;
            //String ejeY = coordenadasY;
            
            //actualizarCoordenadas(ejeX, ejeY);          
            
            return true;
            //return '{success:true, attachId:' + a.Id + ', sObject: ' + c + '}';
        }catch(Exception e){
            system.debug(e);
            return false;
        }
    }
    
    @RemoteAction
    global static boolean actualizarCoordenadasX(String ejeX){
        try{
            List<Account> accsActulizar = [SELECT id, Name, Biometric_x__c, Biometric_y__c FROM Account WHERE Id = '0013h00000ABgmLAAT' LIMIT 1];
            
            Account accActulizar = accsActulizar[0];
            accActulizar.Biometric_x__c = ejeX;
            update accActulizar;                 
            
            return true;
            //return '{success:true, attachId:' + a.Id + ', sObject: ' + c + '}';
        }catch(Exception e){
            system.debug(e);
            return false;
        }
    }
    
    @RemoteAction
    global static boolean actualizarCoordenadasY(String ejeY){
        try{
            List<Account> accsActulizar = [SELECT id, Name, Biometric_x__c, Biometric_y__c FROM Account WHERE Id = '0013h00000ABgmLAAT' LIMIT 1];
            
            Account accActulizar = accsActulizar[0];
            accActulizar.Biometric_y__c = ejeY;
            update accActulizar;                 
            
            return true;
            //return '{success:true, attachId:' + a.Id + ', sObject: ' + c + '}';
        }catch(Exception e){
            system.debug(e);
            return false;
        }
    }
}