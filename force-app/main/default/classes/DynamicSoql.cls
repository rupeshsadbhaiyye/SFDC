public class DynamicSoql {
    public static void test(string likename){
        if(likename!=null){
            list<account> lst=[select name,phone,fax from account where name like:likename+'_%'];
            system.debug('the size of the record is '+lst.size());
            if(!lst.isEmpty()){
                for(account acc:lst){
                    system.debug('the record are '+acc);
                }
            }
        }
    }

}