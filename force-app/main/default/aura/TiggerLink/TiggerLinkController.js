({
	update : function(cmp, event) {
		var trigger = 	cmp.find("trigger");
        
        if(trigger)
        {
            var source = event.getSource();
            
            var label = source.get("v.label");
            
            trigger.set("v.label",label);
        }
	}
})