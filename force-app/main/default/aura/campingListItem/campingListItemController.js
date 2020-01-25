({
	packItem : function(cmp, event, helper) {
        var roja = cmp.get("v.item",true);
        roja.Packed__c = true;
      	cmp.set("v.item",roja);
        var btn = event.getSource();
		btn.set("v.disabled",true);
      
        
	}
})