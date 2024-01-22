public class mapclass {
    //Write an apex program, to fetch all the Case Records from the object and store them 
    //to a Map Collection and represent the records on the Debug Log File.
    public static void test(){
        map<id,account> m=new map<id,account>([select name,phone,fax from account order by name desc limit 20]);
        system.debug('the size of the record is '+m.size());
        if(!m.isEmpty()){
            for(account acc:m.values()){
                system.debug('the record are '+acc);
            }
        }
    }

}