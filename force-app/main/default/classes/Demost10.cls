@istest
public class Demost10 {
        @istest
    static void show()
    {
        Demost9 d=new Demost9();
        d.industry='Banking';
        d.test();
        system.assertEquals ('Hot',d.rating);
        system.assertEquals('Public',d.ownership);
        
    }
   @istest
    static void show2()
    {
         Demost9 d=new Demost9();
        d.industry='';
         d.test();
        system.assertEquals('Warm',d.rating);
        system.assertEquals('Private',d.ownership);
    }
    

    
}