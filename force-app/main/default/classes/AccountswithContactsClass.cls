public class AccountswithContactsClass {

    @AuraEnabled
    Public Static List<Schema.Account> getAccountList(){
        List<Schema.Account> acc = [Select Id,Name,(Select Id,LastName,FirstName from contacts) from account order by createddate desc limit 10];
        return acc;
    }
}