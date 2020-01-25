public with sharing class Controller1 {
@AuraEnabled
    public Static List<Opportunity> getopportunities(){
        List<Opportunity> opportunities = [select id,Name from Opportunity Limit 10];
        return opportunities;
    }
}