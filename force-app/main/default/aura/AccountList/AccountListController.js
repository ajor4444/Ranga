({
	doinit : function(cmp, event) {
		var action = cmp.get("c.findAll");
        action.setCallback(this,function(response)
                           {
                               cmp.set("v.accounts",response.getReturnValue());
                           }
                          );
        $A.enqueueAction(action);
	}
})