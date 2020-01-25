public with sharing class ContactController {
    @AuraEnabled
    public static List<Contact> getContacts()
    {
        List<Contact> ConList = [Select Id,Name,MailingStreet,Phone,Email,LeadSource from Contact];
        return ConList;
    }

}