({
	getopt : function(cmp) {
		var action = cmp.get("c.getopportunities");
        action.setCallback(this,function(response)
        {
         var state = response.getState();
       	 	if(state=="SUCCESS")
       			 {
        	    	cmp.set("v.Opportunities",response.getReturnValue());
        	 	 }
        });
    $A.enqueueAction(action);
	}
});