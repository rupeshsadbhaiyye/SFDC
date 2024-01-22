public class soql21 {
    public static void test(){
        //create the list of contact object 
        list<contact> lst=[select lastname,phone,fax from contact order by lastname desc];
        //apply enhance for loop
        for(contact con:lst){
            system.debug('the record are '+con);
        }
    }

}