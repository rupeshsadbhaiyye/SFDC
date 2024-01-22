public class Branch_details {
    public static void test1(){
        //create object of th account class
        account acc=new account();
        //assign the values
        acc.Name ='Kalpesh Sadbhaiyya';
        acc.Phone ='7894561230';
        acc.Fax ='147';
        acc.BillingCity ='Nagpur';
        acc.industry ='Banking';
        
        //insert the record
        insert acc;
    }
}