public class Account_Contact_Case {
    public static void test(){
        account acc=new account();
        acc.name='ShellEnergyWona';
        acc.phone='147852369';
        acc.fax='741';
        insert acc;
        
if(acc.id!=null){
    system.debug('the account record is succesfully inserted '+acc.id);
    list<contact> lst=new list<contact>();
    for(integer i=1;i<=150;i++){
        contact con=new contact();
        con.firstname='GP';
        con.lastname=acc.name;
        con.phone=acc.phone;
        con.fax=acc.fax;
        con.accountid=acc.id;
        lst.add(con);
        
    }
    insert lst;
    system.debug('the contact record is succesfully inserted '+lst);
    if(lst!=null){
        list<case> lst2=new list<case>();
        for(integer k=1;k<=100;k++){
            case cs=new case();
            cs.AccountId=acc.Id;
            cs.Comments='this is my first code';
            lst2.add(cs);
            
             }
        insert lst2;
        system.debug('the case record inserted successfully'+lst2);
          }
       }
    }
}