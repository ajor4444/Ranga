({
	iter : function(cmp) {
		var long = [];
        for(var i=6;i>=0;i--)
        {
            long.push({value:i});
            cmp.set("v.Reverse",long);
        }
	}
})