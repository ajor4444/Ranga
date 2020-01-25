trigger OppCreate on Account (after insert) {
    if(trigger.isInsert && trigger.isAfter){
        CreateNewOpportunity.CreateOpp(trigger.New);
    }
}