public class example38 {
    public static void test(){
        //Write an SOQL Query, to fetch all the InActive User Records.
        //create the list of user object 
        list<user> lst=[select lastname,firstname,isactive from user where isactive=false];
        //get the size of the record 
        system.debug('the size of the record is '+lst.size());
        //apply for loop
        for(user us:lst){
            system.debug('the record are '+us);
        }
    }

}