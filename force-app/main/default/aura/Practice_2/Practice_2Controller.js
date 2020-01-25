({
	getOpt : function(cmp) {
		var action = cmp.get("c.getOpt1")
        action.setCallback(this,function(response)
        {
        var status = response.getState();
        if(status=="Success")
        			{
            cmp.set("v.Opportunity",response.getReturnValue);
       				 }
         });
     $A.enqueueAction(action);
	}

})