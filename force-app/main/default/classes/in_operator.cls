public class in_operator {
    //Write an apex program, to fetch all the Account Related to the Energy , 
    //Chemicals , Biotechnology Industry Accounts.
    public static void test(){
            list<account> lst=[select name,phone,fax,industry from account 
                               where industry in('Chemicals','Biotechnology','Energy')];
            system.debug('the size of the record is '+lst.size());
            if(!lst.isempty()){
                for(account acc:lst){
                    system.debug('the record are '+acc);
                }
            }
    }

}