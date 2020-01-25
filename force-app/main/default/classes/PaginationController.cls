public class PaginationController {

    @AuraEnabled
    Public static List<Contact> ShowContacts(){
        List<Contact> contactList = new List<Contact>();
        contactList = [Select id,Name,Title,Email,MobilePhone from contact LIMIT 50];
        return contactList;
    }
}