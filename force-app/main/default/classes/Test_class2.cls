@istest
public class Test_class2 {
    @istest
     static void run(){
        New_Demo1 nd=new New_Demo1();
       nd.industry='Banking';
          nd.test();
        system.assertEquals('Hot',nd.rating);
        system.assertEquals('Public', nd.owenership);
        
    }
    @istest
     static void run2(){  
        New_Demo1 nd=new New_Demo1();
        nd.industry='';
        system.assertEquals('Cold', nd.rating);
        system.assertEquals('Private', nd.owenership);
    }
 
}