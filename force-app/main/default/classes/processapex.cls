public class processapex {
    @invocablemethod
    public static void test(list<id> ids){
        if(ids!=null){
            list<account> lst=new list<account>();
            list<account> lst1=[select id,name,phone,fax from account where id in:ids];
            for(account acc: lst1){
                acc.name=acc.name  + 'test';
                lst.add(acc);
            }
            update lst;
        }
    }

}