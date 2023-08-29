public class EgPOPupCon{
    public Opportunity opp{get;set;}
    public boolean INPUT{get;set;}
    public boolean pop{get;set;}
    public string name1{get;set;}

    public EgPOPupCon(){       
           INPUT = true;
    }    
    public pageReference save(){     
       pop = false;
       input = false;
       opp = new Opportunity(name = name1, stagename = 'Prospecting', closedate = Date.today());
       insert opp;      
       PageReference nextpage1 = new PageReference('/apex/EgPOPup');
       return nextpage1.setRedirect(true);                
    }
    public void showpop(){        
       pop = true;
    }    
    public void reject(){        
       pop = false;
    } 
}