public class soql22 {
    public static void test(){
        //apply all rows clause
        //create the list of account object 
        list<account> lst=[select name,phone,fax,isdeleted from account order by name all rows  ];
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}