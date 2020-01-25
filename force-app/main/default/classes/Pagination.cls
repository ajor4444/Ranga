public class Pagination {

   public Apexpages.StandardSetController Controller {set;get;}
    
    public List<Tax__c> getList(){
        List<Tax__c> taxList = (List<Tax__c>)Controller.getrecords();
        return taxList;
    }
    public Pagination(){
        List<Tax__c> taxList = [select ID,Name__c,Billing_City__c from Tax__c];
        Controller = new Apexpages.StandardSetController(taxList);
        Controller.setPageSize(4);
        
    }
}