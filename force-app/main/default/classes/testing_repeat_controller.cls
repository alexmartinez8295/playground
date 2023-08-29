public class testing_repeat_controller {
    public integer indexofaccount {get;set;}
    public integer lastindexofaccount {get;set;}
    public map<account,integer> account_index_map {get;set;} 
    public testing_repeat_controller(){
        indexofaccount      = 0;
        lastindexofaccount  = 0;
        account_index_map = new map <account,integer>();
    }
    public List<account> getItemsforuser(){
        list<account> acc_list = [select id,name from account limit 10];
        lastindexofaccount = acc_list.size();
        for(account a: acc_List){        
            indexofaccount = indexofaccount +1;
            account_index_map.put(a,indexofaccount);
        }
        return acc_List;
    }
}