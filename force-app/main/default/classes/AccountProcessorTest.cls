@IsTest
public class AccountProcessorTest {
    
    @istest
    Public static void Test1(){
        
        Schema.Account a1 = new Schema.Account();
        a1.Name = 'Akruthi';
        Insert a1;
        
        Schema.Contact c1 = new Schema.Contact();
        c1.FirstName = 'Roja';
            c1.LastName = 'Ranga';
            c1.AccountId  = a1.Id;
        Insert c1;
        
        set<Id> AccId = new Set<Id>();
        AccId.add(a1.Id);
        Test.StartTest();
        AccountProcessor.countContacts(AccId);
        Test.StopTest();
        
        Schema.Account ACC = [Select Id,Number_of_Contacts__c from Account where id =: a1.Id LIMIT 1];
        System.AssertEquals(Integer.valueOf(ACC.Number_of_Contacts__c),1); 
    }

}