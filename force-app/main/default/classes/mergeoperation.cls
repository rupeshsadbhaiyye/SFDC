public class mergeoperation {
    public static void test(){
        account sourcerecord=[select name,phone,fax from account where name=:'Rajesh sadbhaiyya' limit 1];
        account targetrecord=[select name from account where name=:'Kalpana sadbhaiyya' limit 1];
        if(sourcerecord!=null && targetrecord!=null){
            merge targetrecord sourcerecord;
        }
    }

}