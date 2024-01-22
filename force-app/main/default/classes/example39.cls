public class example39 {
    public static void test(string industryname){
        //in paramaterised condition step1 : create if condition
        if(industryname !=null && industryname!=''){
        //Write an apex program, to fetch only those Account Records from the object based on the specified Industry Name at runtime.
       //create the list of account class
       list<account> lst=[select name,fax,phone from account where industry=: industryname];
            //get the size of the record
            system.debug('the size of the record is '+lst.size());
            //apply for loop
            for(account acc:lst){
                system.debug('the record are '+acc);
            }
        }
        
    }

}