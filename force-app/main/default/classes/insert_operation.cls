public class insert_operation {
    public static void test(){
        list<account> lst=new list<account>();
        for(integer counter=1;counter<=55;counter++){
            account acc=new account();
            acc.name='bulkification process';
            acc.phone='741258963';
            acc.fax='741';
            lst.add(acc);
            
        }
        if(!lst.isempty()){
            insert lst;
        }
    }

}