public class futureclass {
    @future
    public static void firstcall(){
        system.debug('the call1');
         system.debug('the call2');
         system.debug('the call3');
    }
    @future
    public static void secondcall(){
        system.debug('the second 1call');
        system.debug('the second 2call');
        system.debug('the second 3call');
        firstcall();
    }
    public void thirdcall(){
        system.debug('the third 1call');
        system.debug('the third 2call');
        system.debug('the third 3call');
        secondcall();
    }

}