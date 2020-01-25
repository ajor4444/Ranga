public class CreateNewOpportunity {
    
    Public static void CreateOpp(List<schema.Account> accList){
        List<schema.Opportunity> oppList = new List<schema.Opportunity>();
        
        for(Schema.Account acc:accList){
            if(acc.Industry == 'Electronics'){
                Opportunity Opp = new Opportunity();
                Opp.Name = acc.Name;
                Opp.AccountId = acc.id;
                Opp.Amount = 100;
                Opp.StageName = 'Proposal';
                Opp.CloseDate = System.today()+30;
                oppList.add(Opp);               
            }
        }
        if (!oppList.isEmpty()){
            insert oppList;
        }
    }   
}