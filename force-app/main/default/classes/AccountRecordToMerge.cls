public class AccountRecordToMerge {
    //use case : Need to mereger the child record into the parent record.
    public static void test1(){
        account target=[select id,name from account where name='Parent record'];
        account source=[select id,name from account where name='Child record to merger1'];
        if(target!=null && source!=null){
            merge target source;
        }
    }
}