public class dml8 {
    public static void test(){
        //create the list of account object
        account acc=[select name,phone,fax from account where name='Radha Yadav' limit 1];
        account target=[select name,phone,fax from account where name='Shantabai' limit 1];
        if(acc!=null && target!=null){
            merge target acc;
        }
    }

}