public class example36 {
    public static void test(){
        //Write an SOQL Query, to fetch all the Cases Whose Status is "New" and Priority is "High"
        //create the list of case object
        list<case> lst=[select status,priority from case where status='New' and priority='High'];
        //get hre size of the record
        system.debug('the size of the case records is '+lst.size());
        //apply enhace for loop
        for(case cs:lst){
            system.debug('the record are '+cs);
        }
    }

}