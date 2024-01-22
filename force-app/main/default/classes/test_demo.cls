@istest
public class test_demo {
@istest
    public static void check(){
        newdemo1 n=new newdemo1();
        n.industry='Banking';
         n.test();
        system.assertEquals('Hot', n.rating);
        system.assertEquals('Public', n.ownership);
    }
    @istest
    public static void check2(){
        newdemo1 nd=new newdemo1();
        nd.test();
        nd.industry='';
        system.assertEquals('Cold', nd.rating);
        system.assertEquals('Private', nd.ownership);
    }
}