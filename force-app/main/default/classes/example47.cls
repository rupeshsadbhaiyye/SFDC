public class example47 {
    public static void test(){
        //Write an apex program, to fetch all the Contacts Related to the lead source='Web' and Level='Secondary'
        //create the list of contact class
        list<contact> lst=[select lastname,phone,fax,LeadSource from contact
                           where LeadSource In('Web','Phone Inquiry','External Referral')];
        //get the size of the record 
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(contact con:lst){
            system.debug('the record are'+con);
        }
        
    }

}