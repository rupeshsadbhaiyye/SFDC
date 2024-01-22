public class example34 {
    public static void test(){
        //Write an SOQL Query, to fetch all the InActive User Records.
        //create the list of user
        list<User> lst=[select id,lastname,isactive from user where isactive=true or isactive=false];
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(user us:lst){
            system.debug('the record are '+us);
        }
    }

}