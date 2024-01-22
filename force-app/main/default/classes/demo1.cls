public class demo1 {
    public static void test(){
        list<bank__c> lst=new list<bank__c>();
        for(integer counter =1;counter<=55;counter++){
            bank__c bk=new bank__c();
            bk.Name='IBPS';
            lst.add(bk);
        }
        if(!lst.isempty()){
            insert lst;
        }
    }

}