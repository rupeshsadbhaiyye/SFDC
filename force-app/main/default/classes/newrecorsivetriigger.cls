public class newrecorsivetriigger {
    public static void test(list<account> newlst,map<id,account> oldmap){
        list<account> lst=new list<account>();
        for(account acc:newlst){
            account a=new account(id=acc.id);
            a.Description='new test record';
            lst.add(a);
        }
        update lst;
    }

}