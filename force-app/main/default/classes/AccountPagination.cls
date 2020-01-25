public with sharing class AccountPagination {
    @AuraEnabled
    Public static List<Schema.Account> getAccount()
    {
        List<Schema.Account> Accs = [Select id,Name from Account Limit 10];
        return Accs;
    }
}