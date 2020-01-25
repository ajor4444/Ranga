trigger Count_Check on Contact (after insert) {
	
	set<id> setids = new set<id>(); 
   
    List<Schema.Account> accList = new List<Schema.Account>();
    List<Schema.Contact> conList = new List<Schema.Contact>();
    List<Schema.Account> AccountUpdate = new List<Schema.Account>();
    Map<id,Integer> mapCount = new Map<id,Integer>();
    
    if(trigger.isInsert){
    for(Schema.Contact cc:trigger.new)
    {
        setids.add(cc.accountid);
        
    	}
    }
         //accList = [Select Id, Name,from Account where Id IN:setids];
    	 conList = [Select id,LastName,Accountid from Contact where accountid IN:setids];
     
    
    }