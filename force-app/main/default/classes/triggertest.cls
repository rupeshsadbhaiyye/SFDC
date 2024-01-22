@istest
public class triggertest {
@istest
    public static void test(){
        integer count=[select count() from account];
       Account acc=new Account(Name='LearnFrenzy',phone='022-845454');
        try{
            insert acc;
        }catch(Exception e){
            System.debug(e);
            
        }
    }
}