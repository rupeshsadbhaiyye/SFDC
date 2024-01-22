public class invokeaoex {
    @invocablemethod
    public static void test(list<id> ids){
        if(!ids.isEmpty()){
            list<account> lst=new list<account>();
            list<account> lst1=[select id,name from account where id in:ids];
            for(account acc:lst1){
                acc.name=acc.name +'test';
                lst.add(acc);
            }
            update lst;
        }
    }

}