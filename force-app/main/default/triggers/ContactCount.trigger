trigger ContactCount on Contact (after insert,after update,after delete,after undelete) {

    List<Contact> C1 = Trigger.isDelete?Trigger.old:Trigger.new;
    set<Id> accIds = new set<Id>();
    
    for(Contact c2:C1){
        accIds.add(c2.AccountId);
    }

}