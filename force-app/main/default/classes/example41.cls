public class example41 {
    public static void test(string rupesh){
        if(rupesh!=null && rupesh!=''){
            //Write an apex program, to fetch only those Cases based on the specified "Case Status" at runtime.
            //create the list of case object
            list<case> lst=[select Status,priority,Origin from case where status=:rupesh];
            //get the size of the record
            system.debug('the size of the record is '+lst.size());
            //apply enhance for loop
            for(case cs:lst){
                system.debug('the record are'+cs);
            }
        }
    }

}