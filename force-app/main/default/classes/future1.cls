public class future1 {
    @future
    public static void call(){
        system.debug('the call 1');
        system.debug('the call 2');
        system.debug('the call 3');
        call();
        system.debug('the call 17');
        system.debug('the call 27');
        system.debug('the call 37');
    }
    public static void Show(){
        system.debug('the show 4');
        system.debug('the show 5');
        system.debug('the show 6');
        call();
        system.debug('the show 6');
        system.debug('the show 7');
        system.debug('the show 8');

    }

}