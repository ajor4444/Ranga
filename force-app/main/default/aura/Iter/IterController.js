({
	iterate : function(component) {
        var lon =[];
        for(var i =0;i<=15;i++)
        {
            lon.push({value:i});
            component.set("v.Test",lon);
        }
	}
})