public class databaseinsert {
    public static void test(){
        list<account> lst=new list<account>();
        for(integer counter=1;counter<=5;counter++){
            account acc=new account();
            acc.Phone='741258963';
            acc.fax='741';
            lst.add(acc);
            if(counter!=4){
                acc.Name='Shanta Prasad'+counter;
            }
        }
        if(!lst.isempty()){
            //insert lst;
            database.insert(lst,false);
        }
    }

}