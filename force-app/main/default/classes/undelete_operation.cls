public class undelete_operation {
    public static void test(string num){
        list<account> lst=[select name,phone,fax,isdeleted from account where name like:num+'%' all rows ];
        if(!lst.isEmpty()){
            undelete lst;
        }
    }

}