@istest
public class PizzaBillTest {
    @istest
    public static void test(){
        integer slice=1;
        integer price=8;
        integer result =PizzaBill.Sellprice(slice);
        system.assertequals(8,result,'the price is not matched');
    }
    @istest
    public static void test2(){
        integer slice=4;
        integer price=6;
        integer result =PizzaBill.Sellprice(slice);
        system.assertequals(24,result,'the price is not matched');
    }
    @istest
    public static void test3(){
        integer slice=2;
        integer price=7;
        integer result =PizzaBill.Sellprice(slice);
        system.assertequals(14,result,'the price is not matched');
    }



}