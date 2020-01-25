trigger Alert_Trigger on Tax__c (after insert) {

    Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
    List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
 
    for(Tax__c tc:Trigger.new)
    {
    String[] toAddresses = new string[]{Trigger.newmap.get(tc.Id).Email__c};    
    String[] ccAddresses = new string[]{'ajor.ranga@gmail.com'};    
    msg.setToAddresses(toAddresses);
    msg.setCcAddresses(ccAddresses);
    msg.setSubject('Trail Mail');
    String Name = Trigger.newmap.get(tc.Id).Name__c;
    String City = Trigger.newmap.get(tc.Id).Billing_City__c;
    String Body = Name +',' +'Your Tax has been filed'+' '+'at'+City;
    msg.setPlainTextBody(Body);
    emails.add(msg);
    }
    
    Messaging.sendemail(emails);
}