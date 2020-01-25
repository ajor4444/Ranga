({
	loadContacts : function(cmp) {
        
        var action = cmp.get("c.getContacts");
        action.setCallback(this,function(response)
                           {
                               var State = response.getState();
                               if(State=="SUCCESS")
                               {
                                   cmp.set("v.contacts",response.getReturnValue());
                                   cmp.set("v.contactList",response.getReturnValue());
                                   this.updateTotal(cmp);
                               }
                               
                               var toastEvent = $A.get("e,force:showToast");
                               if(state=="SUCCESS"){
                                   toastEvent.setParams({"title":"Success!",
                                                         "message":"Loaded Successfully."});
                               }
                               else{
                                   toastEvent.setParams({"title":"Error",
                                                         "message":"Hold on Something went Wrong"});
                               }
                               toastEvent.fire();
                           });
        					$A.enqueueAction(action);
	},
    
    updateTotal : function(cmp)
    {
    	var contacts = cmp.get("v.contacts");
    cmp.set("v.totalContacts",contacts.length);
}
})