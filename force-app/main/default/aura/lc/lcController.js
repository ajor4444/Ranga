({
	add : function(component) {
		
        var addition = component.get("v.a1")+component.get("v.a2");
        component.set("v.add",addition);
    }
})