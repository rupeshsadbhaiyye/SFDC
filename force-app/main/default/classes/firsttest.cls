@istest
public class firsttest {
    @istest
    public static void phase1(){
        fisrtclass ft=new fisrtclass();
        ft.name='Rupesh';
        ft.test();
        system.assertEquals('Banking', ft.industrytype);
        system.assertEquals('Public', ft.ownershiptype);
    }
    @istest
    public static void phase2(){
         fisrtclass ft=new fisrtclass();
        ft.name='';
        ft.test();
        system.assertEquals('Energy', ft.industrytype);
        system.assertEquals('Private', ft.ownershiptype);
    }

}