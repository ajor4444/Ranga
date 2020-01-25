@isTest
public class CreateNewOpportunityTest {
    
    static testmethod void test_trigger(){
        List<Schema.Account> lstAccs = new List<Schema.Account>();
        Schema.Account acct = new Schema.account(Name = 'sha', Industry = 'Electronics');
        insert acct;
        lstAccs.add(acct);
        CreateNewOpportunity.CreateOpp(lstAccs);
       
    }   
}