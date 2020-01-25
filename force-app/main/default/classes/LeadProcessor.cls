global class LeadProcessor implements database.Batchable<sObject>{
    global database.querylocator start(database.batchablecontext bc){
       string query='select id,name,leadsource from lead order by name';
     return database.getquerylocator(query);   
    }
    global void execute(database.BatchableContext bc,list<lead> a){
        for(lead l:a)
        {
       l.leadsource='Dreamforce';            
        }
}
    global void finish(database.batchablecontext bc){
        system.debug('records inserted');
    }
}