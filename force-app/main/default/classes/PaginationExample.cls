public class PaginationExample {
    public Apexpages.StandardSetController controller {Set;get;}
    public List<Opportunity> getOpty(){
        List<Opportunity> optyList =(List<Opportunity>)controller.getRecords();
        return optyList;
    }
    public PaginationExample(){
        List<Opportunity> optyList=[select id ,name,stagename from Opportunity];
        controller=new ApexPages.StandardSetController(optyList);
        controller.setPageSize(10);
    }
}