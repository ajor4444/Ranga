({
	clickReimbursed : function(cmp, event, helper) {
		var expense = cmp.get("v.expense");
        var updateEvent = cmp.getEvent("updateExpense");
        updateEvent.setParams({"expense": expense});
        updateEvent.fire();
	}
})