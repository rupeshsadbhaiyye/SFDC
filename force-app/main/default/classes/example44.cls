public class example44 {
    public static void test(){
        //create 100 record inside the account object
        //create the list of the account object
        list<account> lst=new list<account>();
        //apply simple for loop
        for(integer counter =1;counter<=20;counter++){
            //create the object of the account class
                account acc=new account();
            //assign the valued
            acc.Name='Shantabai';
            acc.Phone='741258963';
            acc.Fax ='145';
            acc.AnnualRevenue=4125;
            //add account record in list
            lst.add(acc);
            
        }
        if(!lst.isempty()){
            insert lst;
        }
    }

}