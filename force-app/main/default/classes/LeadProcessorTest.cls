@isTest
public class LeadProcessorTest {

    @isTest static void  check()
    {
       list<lead> l = new list<lead>();
        for(integer i= 0;i<200;i++)
        {
            lead g = new lead();
            g.LastName = 'Tech';
            g.Company = 'Mahindra';
            l.add(g);
        }
        insert l;
        
        Test.startTest();
            LeadProcessor LL = new LeadProcessor();
        	Database.executeBatch(LL);
        Test.stopTest();
    }
}