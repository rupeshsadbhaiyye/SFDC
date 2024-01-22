public class recursiveclass {
    public static void updateaccount(list<account> newlist,map<id,account> oldmap){
        list<account> accounttobeupdate=new list<account>();
        for(account acc:newlist){
            account a=new account(id=acc.id);
            a.Description='New TEst';
            accounttobeupdate.add(a);
        }
        update accounttobeupdate;
        
    }

}