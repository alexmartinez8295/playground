trigger ClosedOpportunityTrigger on Opportunity (after insert,after Update) {
    
    List<Task> t1 = new List<Task>();
    
        
          
        for (Opportunity opp : trigger.new){
            Task T = new Task() ;
            T.Subject = 'Follow Up Test Task' ;
            T.WhatId = opp.Id ;
            if(opp.StageName=='Closed Won'){
                    t1.add(T);
                     }
                }
            insert t1;
     }