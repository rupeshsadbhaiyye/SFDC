public class dynamic10 {
    /*Write an apex program, to fetch all the Account Records,
     whose name is starting with the specified characters at runtime.*/
    public static void test(string rahul){
        if(rahul!=null && rahul!=''){
            //create the list of the contact object
            list<contact> lst=[select lastname,fax,phone from contact where lastname like:'%' + rahul + '%'];
            //get the size of the record
            system.debug('the record size is '+lst.size());
            //apply enhance for loop 
            for(contact con:lst){
                system.debug('the record are '+con);
            }
            
        }
        
    }

}