public class Dynamic2 {
    public static void test(){
//Write an apex program, to fetch all the Account Records from the object and represent on the Debug Log File.
//with the dynamic soql query
//declare the variable and pass the query
      string city='select name,phone,fax,rating,annualrevenue from account';
        //pass the variable to the recference variable
        list<account> lst=database.query(city);
        //get the size of the record 
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record is '+lst);
        }
    }

}