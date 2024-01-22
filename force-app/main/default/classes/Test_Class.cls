@istest
public class Test_Class {
    @istest
    public static void newtest(){
        new_demo_class nd=new new_demo_class();
        nd.test();
        system.assertEquals('Rupesh', nd.name);
        system.assertEquals('Nagpur', nd.city);
        nd.get();
        system.assertEquals('kalpesh', nd.name);
        system.assertEquals('chandrapur', nd.city);
        
    }

}