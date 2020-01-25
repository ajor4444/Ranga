({
	fireEvent : function(cmp, event) {
        
        var cmp1 = cmp.getEvent("cmpEvent");
        cmp1.setParams({
            "message":"Event Fired" + "check the status"
        });
		cmp1.fire();
	}
})