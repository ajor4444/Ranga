({
	getacc : function(cmp) {
		var action = cmp.get("c.getAccount");
        action.setCallback(this,function(response)
        {
           var status = response.getState();
            if(status=="Success")
            {
                cmp.set("v.Accounts",response.getReturnValue);
            }
        });
        $A.enqueueAction(action);
	}
});