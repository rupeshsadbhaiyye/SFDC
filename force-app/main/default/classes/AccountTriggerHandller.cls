public class AccountTriggerHandller {
    public static boolean avoidrecursion=False;
    public static void Afterinserthandller(List<account> lstrecord){
        List<Contact> lst=new List<Contact>();
        for(Account acc: lstrecord){
            Contact con=new Contact();
            con.LastName='Testing of Trigger';
            con.AccountId=acc.Id;
            lst.add(con);
        }
        insert lst;
        if(AccountTriggerHandller.avoidrecursion==False){
            AccountTriggerHandller.avoidrecursion=True;
            Account acc=new Account(Name='Recursive trigger test');
            insert acc;
        }
    }
    public static void BeforeUpdatehandller(List<account> lstrecord,Map<ID,Account> Mapofoldrecords){
        for(account acc : lstrecord){
            if(acc.Rating=='Cold' && Mapofoldrecords.get(acc.Id).Rating=='Hot'){
                acc.Rating.adderror('you can not change the reating from Hot to cold directly');
            }
        }
    }
}