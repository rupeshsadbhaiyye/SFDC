public class Exampledemo1 {
    public static void test(){
        //crete the record inside the account object
        account acc=new account();
        //assign the values
        acc.Name ='Shakuntala devi';
        acc.Phone ='7412589630';
        acc.Fax ='741';
        
        //insert the record
        insert acc;
        
        //get the record id
        if(acc.Id!=null){
            system.debug('the record id of account is '+acc.Id);
}
    }

}