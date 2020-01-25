({
	doFetchContact : function(cmp) {
        var action = cmp.get('c.ShowContacts');
        action.setCallback(this,function(response)
                           {
                               var State = response.getState();
                               if(State== 'SUCCESS' && cmp.isValid()){
                                   var pageSize = cmp.get("v.pageSize");
                                   cmp.set('v.ContactData',response.getReturnValue());
                                   cmp.get('v.totalRecords',cmp.get('v.ContactData').length);
                                   cmp.set('v.startPage',0);
                                   cmp.set('v.endPage',pageSize-1);
                                   var PaginationList = [];
                                   for(var i=0;i<pageSize;i++){
                                       if(cmp.get('v.ContactData').length>i)
                                         PaginationList.push(response.getReturnValue()[i]);
                                   }
                                   cmp.set('v.PaginationlIst',PaginationList);
                                   cmp.set('v.isSending',false);
                               }
                               else{
                                   alert('Error,Pls check');
                               }
                           });
				$A.enqueueAction(action);
	},
    
    next:function(cmp,event){
        var sObjectList = cmp.get('v.ContactData');
        var end = cmp.get('v.endPage');
        var start = cmp.get('v.startPage');
        var pageSize = cmp.get('v.pageSize');
        var paginationList = [];
        var counter = 0;
        for(var i=0;i<end+pageSize+1;i++){
            if(sObjectList.length > i){
                PaginationList.push(sObjectList[i]);
            }
            counter++;
        }
        start= start+counter;
        end = end+counter;
        cmp.set('v.startPage',start);
        cmp.set('v.endPage',end);
        cmp.set('v.PaginationList',PaginationList);
    },
    
    previous : function(cmp,event){
        var sObjectList = cmp.get('v.ContactData');
		var end = cmp.get('v.endPage');
        var start = cmp.get('v.startPage');
        var pageSize = cmp.get('v.pageSize');
        var paginationList = [];
        var counter = 0;
        for(var i= start-pageSize; i < start ; i++){
            if(i > -1){
                Paginationlist.push(sObjectList[i]);
                counter ++;
            }else{
                start++;
            }
        }
        start = start - counter;
        end = end - counter;
        component.set("v.startPage",start);
        component.set("v.endPage",end);
        component.set('v.PaginationList', Paginationlist);
    },
    
    
})