public class Newaccountresursiveclass {
    public static void updateaccount(list<account> newlst,map<id,account> oldmap){
        list<account> lst=new list<account>();
        for(account acc:newlst){
            account a=new account(id=acc.id);
            a.Description='Test Describtion';
            lst.add(a);
            
        }
        update lst;
        
    }


}