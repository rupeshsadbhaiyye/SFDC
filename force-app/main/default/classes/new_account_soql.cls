public class new_account_soql {
   public static void test(){
list<list<sobject>> lst=[find 'Rupesh' in all fields returning account(name),contact(lastname)];
list<account> lstacc=new list<account>();
list<contact> lstcon=new list<contact>();
lstacc=(list<account>)lst[0];
lstcon=(list<contact>)lst[1];
for(account acc:lstacc){
system.debug('The record details are'+lstacc);
}
for(contact con:lstcon){
system.debug('The record details are '+lstcon);
}
}

}