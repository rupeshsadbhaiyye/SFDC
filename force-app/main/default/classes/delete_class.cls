public class delete_class {
//Write an apex program, to fetch all the Account REcords including Deleted Records.
    public static void test(){
        list<account> lst=[select name,phone,fax from account All Rows];
        system.debug('the size of the record is '+lst.size());
        if(!lst.isempty()){
            for(account acc:lst){
                system.debug('the record are '+acc);
            }
        }
    }
}