public class newapex {
    public static void test(){
        account acc=new account();
        acc.name='rupesh';
        insert acc;
        if(acc.Id!=null){
            system.debug('the record inserted succesfully '+acc.Id);
        }
    }

}