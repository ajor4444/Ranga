public class AccountProcessor {
	@future
  public static void countContacts(Set<Id> setIds)
  {
      List<Schema.Account> ListAccount = [Select Id,Number_of_Contacts__c,(Select id from contacts) Name from Account 
                                   Where Id IN :setIds];
      for(Schema.account acc:ListAccount)
      {
          List<Schema.Contact> ConList = acc.Contacts;
          acc.Number_of_Contacts__c = ConList.size();
      }
  }
}