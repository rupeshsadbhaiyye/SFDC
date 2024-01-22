public class example28 {
    public static void test(){
        //Write an apex program, to fetch all the opportunity REcords including Deleted Records.
        //create the list of opportunity object
        list<Opportunity> lst=[select Name,isdeleted from Opportunity all rows];
        //get the size of the record 
        system.debug('the record size is '+lst.size());
        //apply enhance for loop
        for(Opportunity opp:lst){
            system.debug('the record is '+opp);
}
    }

}