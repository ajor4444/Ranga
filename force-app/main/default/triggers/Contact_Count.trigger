trigger Contact_Count on Contact (after insert,after delete,after update,after undelete) {
	set<id> accids = new set<id>();
    
    List<Schema.Account> AccountUpdate = new List<Schema.Account>();
    List<Schema.Contact> Check = new List<Schema.Contact>();
    Map<Id,Integer> Count = new Map<Id,Integer>();
    if(trigger.isinsert){
        for(Contact con:trigger.New){
            accids.add(con.Accountid);
        }
    }
        
    if(trigger.isDelete){
        for(Contact con:trigger.Old){	
            accids.add(con.Accountid);
        }
    }
       // List<Schema.Account> Accounts = [Select Id, Contacts_Count__c, (Select Id,Name from Contacts) from Account where Id IN:accids];
       // System.debug(Accounts);
       
       //  for(Schema.Account acc:Accounts){
       //    Check.add(acc);
       //     Count.put(acc.Id,Check.size());
        //}
        
       // for (Schema.Account aa:Accounts)
       // {
       //     aa.Contacts_Count__c = Count.get(aa.Id);
       //     AccountUpdate.add(aa);
       // }
       // if (!AccountUpdate.isEmpty())
       // {
       //     Update AccountUpdate;
       // }
	
    
 		List<Schema.Account> Account1 =[Select id,Name from Account where id IN:accids];
       List<Schema.Contact> contact1 =[Select id,LastName,Accountid from Contact where Accountid IN:accids];   
    
    for(Schema.Account acc:Account1){
        Check.clear();
        for(Schema.Contact cc:contact1){
            if(acc.Id == cc.Accountid){
                Check.add(cc);
                Count.put(cc.Accountid,Check.size());
            }
        }
    }
    
    for(Schema.Account aaa:Account1){
        if(count.get(aaa.id)== null){
            aaa.Contacts_Count__c =0;
        }
        else{
                aaa.Contacts_Count__c = Count.get(aaa.id);
            AccountUpdate.add(aaa);
        }
        
    }
    
    if(AccountUpdate.size()>0)
    {
        Update AccountUpdate;
        }
}