public class delete_operation {
    public static void test(string num1){
        list<account> lst=[select name,phone,fax from account where name like:num1+'%'];
        if(!lst.isempty()){
            delete lst;
        }
    }

}