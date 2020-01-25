public class AccountHandler{
    public static Schema.Account insertNewAccount(String accountName){  
        Schema.Account acctToBeInserted = new Schema.Account(Name=accountName);
      
        try{
            insert acctToBeInserted;
        }catch(DMLException e){
            System.debug('Inside DMLException catch ,error is ' + e.getMessage());
            acctToBeInserted = NULL;   
            }
       return acctToBeInserted;                 
       }
}