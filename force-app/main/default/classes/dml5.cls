public class dml5 {
    public static void test(string nametype){
        //delete the account record
        if(nametype!=null && nametype!=''){
            list<account> lst=[select name,phone,fax from account where name like:nametype +'%' limit 5];
            if(!lst.isempty()){
                delete lst;
            }
        }
        
    }

}