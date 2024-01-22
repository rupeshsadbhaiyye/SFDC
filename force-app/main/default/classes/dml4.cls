public class dml4 {
    public static void test(){
        //insert record inside the account object
        //step1: create the list of account object
        list<account> lst=new list<account>();
        //apply for loop
        for(integer counter =1;counter<=5;counter++){
            //cretae the object of account class
            account acc=new account();
            //asssign the values 
            acc.Name ='Radha Yadav';
            acc.Phone ='7412589630';
            acc.Fax ='412';
            
            //add the variable inside the list
            lst.add(acc);
            
        }
        if(!lst.isempty()){
            insert lst;
            
            for(integer counter1=1;counter1<=5;counter1++){
                system.debug('the records inserted sucessfully');
            }
        }
    }

}