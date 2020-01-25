({
	getAcc : function(cmp) {
		var action = cmp.get("c.getAccount");
        action.setCallback(this,function(response)
                           {
                               var Status = response.getState();
                               if (Status == "Success")
                               {
                                   cmp.set('v.Account',response.getReturnValue());
                               }
                           })
        $A.enqueueAction(action);
	}
})