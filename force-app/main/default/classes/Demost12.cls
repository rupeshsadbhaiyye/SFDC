@istest
public class Demost12 {
    @istest
    static void show()
    {
        Demost11 d=new Demost11();
        d.industry='Banking';
        d.test();
        system.assertEquals ('Hot',d.rating);
        system.assertEquals('Public',d.ownership);
        
    }
   @istest
    static void show2()
    {
      Demost11  d=new Demost11 ();
        d.industry='';
         d.test();
        system.assertEquals('Warm',d.rating);
        system.assertEquals('Private',d.ownership);
    }
    

}