trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {
List<BatchLeadConvertErrors__c> errorList = new List<BatchLeadConvertErrors__c>();
    for(BatchApexErrorEvent batch:trigger.new){
        BatchLeadConvertErrors__c  batchLead = new BatchLeadConvertErrors__c();
        batchLead.AsyncApexJobId__c = batch.AsyncApexJobId;
        batchLead.Records__c = batch.JobScope;
        batchLead.StackTrace__c = batch.StackTrace;
        errorList.add(batchLead);
    }
    insert errorList;
}