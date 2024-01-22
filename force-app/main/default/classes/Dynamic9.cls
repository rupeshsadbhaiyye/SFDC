public class Dynamic9 {
    public static void test(string nametype){
        /*Write an apex program, to fetch all the Account Records,
         whose name is starting with the specified characters at runtime.*/
        //like operator
        //create the list of account object and the query in squre bracket
        list<account> lst=[select name,phone,fax from account where name like:nametype + '%'];
        //get the record size 
        system.debug('the record size is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
        
    }

}