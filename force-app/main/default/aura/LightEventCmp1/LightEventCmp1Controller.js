({
	doInit : function(cmp, event, helper) {
		cmp.set('v.Columns',[
            {label : 'S.No',fieldName : 'SNo',type : 'number'},
            {label : 'Name of Source',fieldName :'Source',type :'text'},
            {label :'Amount',fieldName:'Amount',type:'number'}
        ]);
        cmp.set('v.Income',[
            {SNo : 1,Source : 'Regular Job',Amount : 10000},
            {SNo : 2,Source : 'Shift Allowances', Amount : 2000}   
        ]);
	},
    
    handlecmpEvent : function(cmp,event,helper){
    	alert('Event Handler 1');
},
 	
 toggleIncomeform : function(cmp,event,helper){
    var IncomeForm = cmp.find("incomeForm");
    $A.util.toggleClass(IncomeForm,"slds-hide");   
},
    
    addIncome : function(cmp,event,helper){     
        var income = cmp.get("v.Income");
         var newincome = {
            SNo:income.length+1,
            Source:cmp.find("Source").get("v.value"),
            Amount:parseFloat(cmp.find("Amount").get("v.value"))
        }      
        
        if(newincome.Source!='' && newincome.Amount!='')
        {
            income.push(newincome);
            cmp.set("v.income",income);
            cmp.find("Source").set("v.value",'');
            cmp.find("Amount").set("v.value",'');
        }
    },
    
    
    fireTotalIncomeEvent : function(cmp,event,helper){
        var incomes = cmp.get("v.Income");
        var totalincome = 0;
        for (var i=0;i<incomes.length;i++){
            totalincome += incomes[i].amount;
        }
        var TotalIncomeEvent = cmp.getEvent("TotalIncomecmpEvent");
        TotalIncomeEvent.setParams({totalincome : totalincome});
        TotalIncomeEvent.fire();
    }
    
    
});