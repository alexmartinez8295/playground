public class SubmitFormController
{
    public string username{get;set;}
    public string password{get;set;}
    public string whatsapp{get;set;}
    public string facebook{get;set;}
    public string instagram{get;set;}
    public string tiktok{get;set;}
    public string comentario{get;set;}
    
    public void submitForm()
    {
        try{
        System.debug('## User name: '+username);  
        System.debug('## Password: '+password);  
        System.debug('## whatsapp: '+whatsapp);
        System.debug('## facebook: '+facebook);
        System.debug('## instagram: '+instagram);
        System.debug('## tiktok: '+tiktok);
        System.debug('## comentario: '+comentario);
        }catch(Exception e){
            System.debug('## excepcion: '+e);
        }
    }
}