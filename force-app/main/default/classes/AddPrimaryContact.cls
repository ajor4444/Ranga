public class AddPrimaryContact implements Queueable
	{
    private Contact c;
    private String state;
    public  AddPrimaryContact(Contact c, String state)
    {
        this.c = c;
        this.state = state;
    }
    public void execute(QueueableContext context)
    {
         List<Schema.Account> ListAccount = [SELECT ID, Name ,(Select id,FirstName,LastName from contacts ) FROM ACCOUNT WHERE BillingState = :state LIMIT 200];
         List<Schema.Contact> lstContact = new List<Schema.Contact>();
         for (Schema.Account acc:ListAccount)
         {
                 Schema.Contact cont = c.clone(false,false,false,false);
                 cont.AccountId =  acc.id;
                 lstContact.add( cont );
         }
         if(lstContact.size() >0 )
         {
             insert lstContact;
         }
    }
}