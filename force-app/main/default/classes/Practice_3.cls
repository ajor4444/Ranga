public with sharing class Practice_3 {
	@AuraEnabled
    Public Static List<Opportunity> getOpt1(){
        List<Opportunity> OppList = [Select id,Name from Opportunity limit 10];
        return OppList;
    }
}