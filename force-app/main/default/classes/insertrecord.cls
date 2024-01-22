public class insertrecord {
    public static void test(){
        account acc=new account();
        acc.name='Kalpana Sadbhaiyya';
        insert acc;
        if(acc.Id!=null){
            system.debug('the record inserted'+acc.Id);
        }
    }

}