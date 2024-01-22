public class dml6 {
    public static void test(string nametype){
        //delete hirirng manager record
        if(nametype!=null && nametype!=''){
            //create the list of hiring manager object
            list<hiring_manager__c> lst=[select name from hiring_manager__c where name like:nametype +'%' limit 25 ];
            if(!lst.isempty()){
                delete lst;
            }
        }
    }

}