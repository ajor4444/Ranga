public class Order_API {
    Public String Pincode {set;get;}
    Public List<String> Places {set;get;}
    Public String Result {set;get;}
    
      Order_API(){
          String Name;
          String Description;
          String BranchType;
          String DeliveryStatus;
          String Taluk;
    }
    
    String URL = 'http://postalpincode.in/api/pincode/';
    Public void getAddress(){
        http hp = new http();
        httpRequest req = new httpRequest();
        req.setMethod('GET');
        req.setEndpoint(URL + Pincode);
  		httpResponse res = hp.send(req);
       	Result = res.getBody();
        
            System.debug(Result);
			System.debug('STATUS:'+res.getStatus());
     		System.debug('STATUS_CODE:'+res.getStatusCode()); 		 
        
       // Order_API(pw) = (Order_API)JSON.deserialize(Result, Order_API.class);
        
        
        	//System.JSONParser jp = JSON.createParser(Result);
       		// while(jp.nextToken()!=null){
           	//		 if (jp.getText()=='Name'){
             //  			 jp.nextToken();
              // 			 Places.add(jp.getText());
            //			}
            //		}
    }
}