public class Dml3 {
    public static void test(string nametype){
        //undelete the hiring manager records
        if(nametype!=null && nametype!=''){
            //create the list of hiring manager object
            list<hiring_manager__c> lst=[select name,isdeleted
                                         from hiring_manager__c where name like:nametype +'%' all rows];
            //condition
            if(!lst.isempty()){
                undelete lst;
            }
        }
    }

}