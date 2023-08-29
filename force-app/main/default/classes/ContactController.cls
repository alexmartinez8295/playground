global class ContactController{
    
    public static List<Case> listCases{get;set;}  
    public static Id recId{get;set;}
    
    public ContactController(ApexPages.StandardController controller)
    {
        recId = controller.getId();
    }

    @AuraEnabled(cacheable=true)
    public static List<Case> fetchAllCases(String accntId)
    {
        listCases = new List<Case>();
        listCases = [Select id,casenumber,status,Origin,Subject,Type,ContactMobile FROM Case WHERE AccountId=:accntId limit 20];
        return listCases;
    }
    
    @AuraEnabled
    public static List<CasesWrapper> checkIsCloseableCases(List<Case> listAllCases)
    {
        
        System.debug('listAllCases...'+listAllCases);
        String errMsg ='';
        List<String> listCaseNum =new List<String>();
        List<String> listCloseableCaseNum =new List<String>();
        String respString = '{"cases":["';
        
        for(Integer i=0;i<listAllCases.size();i++)
        {
            listCaseNum.add(listAllCases[i].casenumber);
            if(Math.mod((i+1),2) == 0)
                listCloseableCaseNum.add(listAllCases[i].casenumber);
        
        }
        
        String finalCaseClose = String.join(listCloseableCaseNum,'","');
        respString = respString+finalCaseClose +'"]}';
        
        String jsonBody = '{"Country":"IND","casenumber":["'+finalCaseClose+'"]}';
        
        System.debug('respString ...'+respString +'...'+jsonBody);
        Http http = new Http();
        HttpResponse res = new HttpResponse();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('endPoint details..');
        req.setMethod('POST');
        req.setBody(jsonBody);
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Currency', 'INR');
        
        try
        {
            //  res = http.send(req);                      
            string responseValue;// = res.getBody();           
            //   system.debug('responseValue-->>'+responseValue+''+res.getbody());
            responseValue = respString;           
            
                
            if(String.isNotBlank(responseValue)) //   if(res.getStatus()=='OK' && res.getStatusCode()==200 && String.isNotBlank(responseValue))
            {
                    map<string,object> IsCan = (map<string,object>)JSON.deserializeUntyped(responseValue);
                    List<CasesWrapper> listcaseWrap = new List<CasesWrapper>();
                    System.debug('responseValue...'+responseValue);
                    if(IsCan!=null && IsCan.containsKey('cases'))
                    {
                    List<String> closeableCsNum =new List<String>();
                    for(Object obj: (List<Object>)IsCan.get('cases'))
                        closeableCsNum.add((String)obj);
                    
                        System.debug('closeableCsNum...'+closeableCsNum);
                    for(Case cs : listAllCases)
                    {
                        if(closeableCsNum.contains(cs.casenumber))
                            listcaseWrap.add(new CasesWrapper(cs,true));
                        else
                            listcaseWrap.add(new CasesWrapper(cs,false));
                    }
                    
                    System.debug('listcaseWrap....'+listcaseWrap);
                    return listcaseWrap;
                    }
                    
                    else
                    {
                    errMsg ='Received invalid response';
                    throw new AuraHandledException(errMsg); 
                    }
            }
            else
            {
                    errMsg ='Oops something went wrong';
                    throw new AuraHandledException(errMsg); 
            }
        }
        
        Catch(Exception e)
        {
            System.debug('Exception ---'+errMsg);
            AuraHandledException ex = new AuraHandledException(errMsg);
            ex.setMessage(errMsg);
            throw ex;          
        }
    }
    
    @AuraEnabled
    public static string closeSelCases(List<String> listSelCasesToUpdate)
    {
        List<Case> listCasesToUpdate = new List<Case>();
        for(Case cs : [Select id,Status From Case WHERE CaseNumber IN :listSelCasesToUpdate])
        {
        //  cs.Status = 'Closed';
            listCasesToUpdate.add(cs);
        }
        
        try
        {
            if(!listCasesToUpdate.isEmpty())
            {
                update listCasesToUpdate;
                return 'Selected Cases Has Been Closed Successfully';
                }
            }
            Catch(Exception e)
            {
            AuraHandledException ex = new AuraHandledException(String.valueOf(e));
            ex.setMessage('An Error Occured While Closing The Cases');
            throw ex; 
            }         
            
        return null;
    }
        
                    
    public class CasesWrapper
    {
        @AuraEnabled public Case cs{get;set;}
        @AuraEnabled public boolean isCloseable{get;set;}
        @AuraEnabled public Boolean isSelect{get;set;}
            
        public CasesWrapper(Case csObj,Boolean closeable)
        {
            this.cs = csObj;
            this.isCloseable = closeable;
            this.isSelect = false;
        }

    }
}