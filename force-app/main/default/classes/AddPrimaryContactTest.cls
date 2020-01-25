@isTest
public class AddPrimaryContactTest
{
     @isTest static void TestList()
     {
         List<Schema.Account> Teste = new List <Schema.Account>();
         for(Integer i=0;i<50;i++)
         {
             Teste.add(new Schema.Account(BillingState = 'CA', name = 'Test'+i));
         }
         for(Integer j=0;j<50;j++)
         {
             Teste.add(new Schema.Account(BillingState = 'NY', name = 'Test'+j));
         }
         insert Teste;
 

         Schema.Contact co = new Schema.Contact();
         co.FirstName='demo';
         co.LastName ='demo';
         insert co;
         String state = 'CA';
       
          AddPrimaryContact apc = new AddPrimaryContact(co, state);
          Test.startTest();
            System.enqueueJob(apc);
          Test.stopTest();
      }
    

}