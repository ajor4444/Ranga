({
	doInit : function(cmp, event, helper) {
		cmp.set('v.isSending',true);
        cmp.set('v.columns',[
            {label: 'Contact Name',fieldName :'Name',type : 'text',sortable : 'true'},
            {label: 'Title',fieldName :'Title',type : 'text',sortable : 'true'},
            {label: 'Email',fieldName :'Email',type : 'email',sortable : 'true'},
            {label: 'Mobile Phone',fieldName :'MobilePhone',type : 'phone',sortable : 'true'},
        ]);
             helper.doFetchContact(cmp);
	},
            getSelectedName : function(cmp,event){
            var SelectedRows  = event.getParam('SelectedRows');
            
            for (var i = 0;i<SelectedRows.length;i++){
            
            }
            },
            
            next:function(cmp,event,helper){
            helper.next(cmp,event);
            },
            previous : function(cmp,event,helper){
            helper.next(cmp,event);
            },
})