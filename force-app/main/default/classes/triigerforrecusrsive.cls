public class triigerforrecusrsive {
public static void test(list<account> newlst,map<id,account> oldmap){
list<account> lst=new list<account>();
for(account acc:newlst){
account a=new account(id=acc.id);
a.Description='test account';
lst.add(a);
}
update lst;
}
}