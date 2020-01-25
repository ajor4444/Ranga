@isTest
public class CreateNewOpp_Test {

    public testmethod static void oppTest(){
        Schema.Account acc = new Schema.Account();
        acc.name = 'Akash';
        acc.Industry = 'Electronics';
        insert acc;
        System.debug(acc);
        Schema.Opportunity Opp = new Schema.Opportunity();
        Opp.Name = acc.Name;
        Opp.AccountId = acc.id;
        Opp.Amount = 25 ;
        Opp.StageName = 'Proposal';
        Opp.CloseDate = System.today()+30;
        insert Opp;
        System.debug(Opp);
    }
    	
	 //System.assertEquals(1, [select count() from account where Name  = 'Roja']);
}