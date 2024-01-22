public class example40 {
    public static void test(boolean username){
        if(username !=null ){
            // Write an apex program, to fetch only those Users based on the specified UserName.
            // create the list of user 
            list<user> lst=[select lastname,firstname,isactive from user where isactive=: username];
            //get the size of the record
            system.debug('the size of the record is '+lst.size());
            //apply enhance for loop
            for(user us:lst){
                system.debug('the record is '+us);
            }
        }
        
    }

}