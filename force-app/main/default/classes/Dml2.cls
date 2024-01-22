public class Dml2 {
    public static void test(string cap){
        if(cap!=null && cap!=''){
            //step1: create the list of hiring manager object
            list<hiring_manager__c> lst=[select name from hiring_manager__c where name like:cap +'%'];
            
            if(!lst.isempty()){
                delete lst;
            }
        }
        
    }

}