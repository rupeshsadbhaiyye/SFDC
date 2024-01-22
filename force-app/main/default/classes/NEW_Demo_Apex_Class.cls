public class NEW_Demo_Apex_Class {
    //write an apex program to insert 100 account record;
    public static void test(){
        list<account> lst=[select id,name,fax,active__C from account where active__C='True'];
        for(account acc :lst){
            acc.name='123';
            acc.fax='741';
            acc.Active__c ='False';
            lst.add(acc);
            
        }
        if(!lst.isempty()){
            update lst;
            system.debug('Record updated succesfully '+lst);
        }
    }
}